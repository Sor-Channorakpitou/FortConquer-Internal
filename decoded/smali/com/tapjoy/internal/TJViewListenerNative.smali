.class public Lcom/tapjoy/internal/TJViewListenerNative;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJViewListener;


# instance fields
.field private final a:J


# direct methods
.method private constructor <init>(J)V
    .locals 3
    .param p1, "nativeHandle"    # J

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 15
    :cond_0
    iput-wide p1, p0, Lcom/tapjoy/internal/TJViewListenerNative;->a:J

    .line 16
    return-void
.end method

.method static create(J)Ljava/lang/Object;
    .locals 2
    .param p0, "nativeHandle"    # J
    .annotation build Lcom/tapjoy/internal/Keep;
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/tapjoy/internal/TJViewListenerNative;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/internal/TJViewListenerNative;-><init>(J)V

    return-object v0
.end method

.method private static native onViewDidCloseNative(JI)V
.end method

.method private static native onViewDidOpenNative(JI)V
.end method

.method private static native onViewWillCloseNative(JI)V
.end method

.method private static native onViewWillOpenNative(JI)V
.end method


# virtual methods
.method public onViewDidClose(I)V
    .locals 2
    .param p1, "viewType"    # I

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/tapjoy/internal/TJViewListenerNative;->a:J

    invoke-static {v0, v1, p1}, Lcom/tapjoy/internal/TJViewListenerNative;->onViewDidCloseNative(JI)V

    .line 26
    return-void
.end method

.method public onViewDidOpen(I)V
    .locals 2
    .param p1, "viewType"    # I

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/tapjoy/internal/TJViewListenerNative;->a:J

    invoke-static {v0, v1, p1}, Lcom/tapjoy/internal/TJViewListenerNative;->onViewDidOpenNative(JI)V

    .line 36
    return-void
.end method

.method public onViewWillClose(I)V
    .locals 2
    .param p1, "viewType"    # I

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/tapjoy/internal/TJViewListenerNative;->a:J

    invoke-static {v0, v1, p1}, Lcom/tapjoy/internal/TJViewListenerNative;->onViewWillCloseNative(JI)V

    .line 21
    return-void
.end method

.method public onViewWillOpen(I)V
    .locals 2
    .param p1, "viewType"    # I

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/tapjoy/internal/TJViewListenerNative;->a:J

    invoke-static {v0, v1, p1}, Lcom/tapjoy/internal/TJViewListenerNative;->onViewWillOpenNative(JI)V

    .line 31
    return-void
.end method
