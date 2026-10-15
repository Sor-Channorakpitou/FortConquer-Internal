.class public Lcom/droidhen/andplugin/FlashMotionCache$KeyFrameInfo;
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
    name = "KeyFrameInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xfdf30eb971eb338L


# instance fields
.field public bBlank:Z

.field public ease:F

.field public firstFrame:I

.field public index:I

.field public pScaleX:F

.field public pScaleY:F

.field public pX:F

.field public pY:F

.field public rotation:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
