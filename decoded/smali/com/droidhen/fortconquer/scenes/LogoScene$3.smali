.class Lcom/droidhen/fortconquer/scenes/LogoScene$3;
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
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/LogoScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/LogoScene;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 173
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/LogoScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/LogoScene;

    invoke-static {v1}, Lcom/droidhen/fortconquer/scenes/LogoScene;->access$0(Lcom/droidhen/fortconquer/scenes/LogoScene;)[Lcom/droidhen/andplugin/modifier/DelayCallModifier;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 176
    sget-object v1, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 177
    return-void

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/LogoScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/LogoScene;

    invoke-static {v1}, Lcom/droidhen/fortconquer/scenes/LogoScene;->access$1(Lcom/droidhen/fortconquer/scenes/LogoScene;)Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    move-result-object v1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/LogoScene$3;->this$0:Lcom/droidhen/fortconquer/scenes/LogoScene;

    invoke-static {v2}, Lcom/droidhen/fortconquer/scenes/LogoScene;->access$0(Lcom/droidhen/fortconquer/scenes/LogoScene;)[Lcom/droidhen/andplugin/modifier/DelayCallModifier;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
