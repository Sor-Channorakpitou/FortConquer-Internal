.class Lcom/droidhen/fortconquer/scenes/LogoScene$7;
.super Ljava/lang/Object;
.source "LogoScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/LogoScene;->createBGAndSprites()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/LogoScene;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/LogoScene;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/LogoScene$7;->this$0:Lcom/droidhen/fortconquer/scenes/LogoScene;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene$7;->this$0:Lcom/droidhen/fortconquer/scenes/LogoScene;

    invoke-static {v0}, Lcom/droidhen/fortconquer/scenes/LogoScene;->access$7(Lcom/droidhen/fortconquer/scenes/LogoScene;)Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    move-result-object v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/LogoScene$7;->this$0:Lcom/droidhen/fortconquer/scenes/LogoScene;

    invoke-static {v1}, Lcom/droidhen/fortconquer/scenes/LogoScene;->access$8(Lcom/droidhen/fortconquer/scenes/LogoScene;)Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 203
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sInstance:Lcom/droidhen/fortconquer/GameActivity;

    invoke-static {v0}, Lcom/gamepromote/offerwall/OfferWall;->getInstance(Landroid/content/Context;)Lcom/gamepromote/offerwall/OfferWall;

    move-result-object v0

    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->sInstance:Lcom/droidhen/fortconquer/GameActivity;

    invoke-static {v1}, Lcom/droidhen/fortconquer/CCPrefs;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gamepromote/offerwall/OfferWall;->getAd(Ljava/lang/String;)Lcom/gamepromote/offerwall/AdData;

    move-result-object v0

    sput-object v0, Lcom/droidhen/fortconquer/GameActivity;->sAdData:Lcom/gamepromote/offerwall/AdData;

    .line 204
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sAdData:Lcom/gamepromote/offerwall/AdData;

    if-eqz v0, :cond_0

    .line 206
    new-instance v0, Lcom/moreexchange/model/Icon;

    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->sAdData:Lcom/gamepromote/offerwall/AdData;

    invoke-virtual {v1}, Lcom/gamepromote/offerwall/AdData;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/moreexchange/model/Icon;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/droidhen/fortconquer/GameActivity;->sGameIcon:Lcom/moreexchange/model/Icon;

    .line 207
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sGameIcon:Lcom/moreexchange/model/Icon;

    invoke-virtual {v0}, Lcom/moreexchange/model/Icon;->isIconDownload()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sGameIcon:Lcom/moreexchange/model/Icon;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/moreexchange/model/Icon;->downloadIcon(Landroid/os/Handler;)V

    .line 212
    :cond_0
    return-void
.end method
