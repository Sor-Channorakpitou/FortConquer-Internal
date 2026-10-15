.class Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg$1;
.super Ljava/lang/Object;
.source "OfferWallAdDlg.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;->onClick(Lcom/droidhen/andplugin/ComposedAnimatedSprite;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg$1;->this$0:Lcom/droidhen/fortconquer/scenes/OfferWallAdDlg;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 211
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sInstance:Lcom/droidhen/fortconquer/GameActivity;

    invoke-static {v0}, Lcom/gamepromote/offerwall/OfferWall;->getInstance(Landroid/content/Context;)Lcom/gamepromote/offerwall/OfferWall;

    move-result-object v0

    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->sInstance:Lcom/droidhen/fortconquer/GameActivity;

    invoke-static {v1}, Lcom/droidhen/fortconquer/CCPrefs;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 212
    sget-object v2, Lcom/droidhen/fortconquer/GameActivity;->sInstance:Lcom/droidhen/fortconquer/GameActivity;

    sget-object v3, Lcom/droidhen/fortconquer/GameActivity;->sAdData:Lcom/gamepromote/offerwall/AdData;

    .line 211
    invoke-virtual {v0, v1, v2, v3}, Lcom/gamepromote/offerwall/OfferWall;->acceptAd(Ljava/lang/String;Landroid/app/Activity;Lcom/gamepromote/offerwall/AdData;)V

    .line 213
    return-void
.end method
