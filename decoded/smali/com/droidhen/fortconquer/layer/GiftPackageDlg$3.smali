.class Lcom/droidhen/fortconquer/layer/GiftPackageDlg$3;
.super Lorg/anddev/andengine/entity/primitive/Rectangle;
.source "GiftPackageDlg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/layer/GiftPackageDlg;->initSprite()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/layer/GiftPackageDlg;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/layer/GiftPackageDlg;FFFF)V
    .locals 0
    .param p2, "$anonymous0"    # F
    .param p3, "$anonymous1"    # F
    .param p4, "$anonymous2"    # F
    .param p5, "$anonymous3"    # F

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/layer/GiftPackageDlg$3;->this$0:Lcom/droidhen/fortconquer/layer/GiftPackageDlg;

    .line 133
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/anddev/andengine/entity/primitive/Rectangle;-><init>(FFFF)V

    return-void
.end method


# virtual methods
.method public onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z
    .locals 1
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;
    .param p2, "pTouchAreaLocalX"    # F
    .param p3, "pTouchAreaLocalY"    # F

    .prologue
    .line 137
    const/4 v0, 0x1

    return v0
.end method
