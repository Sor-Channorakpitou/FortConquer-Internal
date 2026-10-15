.class public Lorg/anddev/andengine/util/progress/ProgressMonitor;
.super Ljava/lang/Object;
.source "ProgressMonitor.java"

# interfaces
.implements Lorg/anddev/andengine/util/progress/IProgressListener;


# instance fields
.field private final mListener:Lorg/anddev/andengine/util/progress/IProgressListener;

.field private final mParentProgressMonitor:Lorg/anddev/andengine/util/progress/ProgressMonitor;

.field private mProgress:I

.field private mSubMonitorRangeFrom:I

.field private mSubMonitorRangeTo:I


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/util/progress/IProgressListener;)V
    .locals 2
    .param p1, "pListener"    # Lorg/anddev/andengine/util/progress/IProgressListener;

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v1, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mSubMonitorRangeFrom:I

    .line 23
    const/16 v0, 0x64

    iput v0, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mSubMonitorRangeTo:I

    .line 25
    iput v1, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mProgress:I

    .line 32
    iput-object p1, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mListener:Lorg/anddev/andengine/util/progress/IProgressListener;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mParentProgressMonitor:Lorg/anddev/andengine/util/progress/ProgressMonitor;

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/util/progress/ProgressMonitor;)V
    .locals 2
    .param p1, "pParent"    # Lorg/anddev/andengine/util/progress/ProgressMonitor;

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v1, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mSubMonitorRangeFrom:I

    .line 23
    const/16 v0, 0x64

    iput v0, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mSubMonitorRangeTo:I

    .line 25
    iput v1, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mProgress:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mListener:Lorg/anddev/andengine/util/progress/IProgressListener;

    .line 38
    iput-object p1, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mParentProgressMonitor:Lorg/anddev/andengine/util/progress/ProgressMonitor;

    .line 39
    return-void
.end method

.method private onSubProgressChanged(I)V
    .locals 5
    .param p1, "pSubProgress"    # I

    .prologue
    .line 76
    iget v2, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mSubMonitorRangeTo:I

    iget v3, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mSubMonitorRangeFrom:I

    sub-int v1, v2, v3

    .line 77
    .local v1, "subRange":I
    iget v2, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mSubMonitorRangeFrom:I

    mul-int v3, v1, p1

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    add-int v0, v2, v3

    .line 79
    .local v0, "subProgressInRange":I
    iget-object v2, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mParentProgressMonitor:Lorg/anddev/andengine/util/progress/ProgressMonitor;

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mParentProgressMonitor:Lorg/anddev/andengine/util/progress/ProgressMonitor;

    invoke-direct {v2, v0}, Lorg/anddev/andengine/util/progress/ProgressMonitor;->onSubProgressChanged(I)V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v2, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mListener:Lorg/anddev/andengine/util/progress/IProgressListener;

    invoke-interface {v2, v0}, Lorg/anddev/andengine/util/progress/IProgressListener;->onProgressChanged(I)V

    goto :goto_0
.end method


# virtual methods
.method public getParentProgressMonitor()Lorg/anddev/andengine/util/progress/ProgressMonitor;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mParentProgressMonitor:Lorg/anddev/andengine/util/progress/ProgressMonitor;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mProgress:I

    return v0
.end method

.method public onProgressChanged(I)V
    .locals 1
    .param p1, "pProgress"    # I

    .prologue
    .line 67
    iput p1, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mProgress:I

    .line 68
    iget-object v0, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mParentProgressMonitor:Lorg/anddev/andengine/util/progress/ProgressMonitor;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mParentProgressMonitor:Lorg/anddev/andengine/util/progress/ProgressMonitor;

    invoke-direct {v0, p1}, Lorg/anddev/andengine/util/progress/ProgressMonitor;->onSubProgressChanged(I)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mListener:Lorg/anddev/andengine/util/progress/IProgressListener;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/util/progress/IProgressListener;->onProgressChanged(I)V

    goto :goto_0
.end method

.method public setSubMonitorRange(II)V
    .locals 0
    .param p1, "pSubMonitorRangeFrom"    # I
    .param p2, "pSubMonitorRangeTo"    # I

    .prologue
    .line 54
    iput p1, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mSubMonitorRangeFrom:I

    .line 55
    iput p2, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mSubMonitorRangeTo:I

    .line 56
    return-void
.end method
