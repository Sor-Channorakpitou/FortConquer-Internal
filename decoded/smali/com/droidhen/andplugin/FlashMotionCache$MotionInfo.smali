.class public Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;
.super Ljava/lang/Object;
.source "FlashMotionCache.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/andplugin/FlashMotionCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MotionInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x30ec5fb14c5b6aabL


# instance fields
.field public duration:I

.field public elementType:Ljava/lang/String;

.field public fileFullPath:Ljava/lang/String;

.field public frameRate:I

.field public geomPointX:F

.field public geomPointY:F

.field public height:F

.field public keyFrameCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;",
            ">;"
        }
    .end annotation
.end field

.field public left:F

.field public pRotation:F

.field public pScaleX:F

.field public pScaleY:F

.field public pX:F

.field public pY:F

.field public top:F

.field public width:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/droidhen/andplugin/FlashMotionCache$MotionInfo;->keyFrameCache:Ljava/util/ArrayList;

    .line 250
    return-void
.end method
