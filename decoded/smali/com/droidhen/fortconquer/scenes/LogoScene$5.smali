.class Lcom/droidhen/fortconquer/scenes/LogoScene$5;
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
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/LogoScene$5;->this$0:Lcom/droidhen/fortconquer/scenes/LogoScene;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/LogoScene$5;->this$0:Lcom/droidhen/fortconquer/scenes/LogoScene;

    invoke-static {v0}, Lcom/droidhen/fortconquer/scenes/LogoScene;->access$3(Lcom/droidhen/fortconquer/scenes/LogoScene;)Lcom/droidhen/andplugin/ComposedAnimatedSprite;

    move-result-object v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/LogoScene$5;->this$0:Lcom/droidhen/fortconquer/scenes/LogoScene;

    invoke-static {v1}, Lcom/droidhen/fortconquer/scenes/LogoScene;->access$4(Lcom/droidhen/fortconquer/scenes/LogoScene;)Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/droidhen/andplugin/ComposedAnimatedSprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 190
    return-void
.end method
