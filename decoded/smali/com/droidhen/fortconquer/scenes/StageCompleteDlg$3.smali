.class Lcom/droidhen/fortconquer/scenes/StageCompleteDlg$3;
.super Ljava/lang/Object;
.source "StageCompleteDlg.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->popNewCard(Lcom/droidhen/fortconquer/scenes/SmartScene;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;

.field private final synthetic val$fontTexture:Lorg/anddev/andengine/opengl/texture/Texture;

.field private final synthetic val$fontTextureS:Lorg/anddev/andengine/opengl/texture/Texture;

.field private final synthetic val$scene:Lcom/droidhen/fortconquer/scenes/SmartScene;

.field private final synthetic val$starTexture:Lcom/droidhen/andplugin/PlistTexture;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;Lcom/droidhen/fortconquer/scenes/SmartScene;Lorg/anddev/andengine/opengl/texture/Texture;Lorg/anddev/andengine/opengl/texture/Texture;Lcom/droidhen/andplugin/PlistTexture;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg$3;->this$0:Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;

    iput-object p2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg$3;->val$scene:Lcom/droidhen/fortconquer/scenes/SmartScene;

    iput-object p3, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg$3;->val$fontTexture:Lorg/anddev/andengine/opengl/texture/Texture;

    iput-object p4, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg$3;->val$fontTextureS:Lorg/anddev/andengine/opengl/texture/Texture;

    iput-object p5, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg$3;->val$starTexture:Lcom/droidhen/andplugin/PlistTexture;

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 596
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg$3;->this$0:Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;

    invoke-static {v0}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->access$2(Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;)Lcom/droidhen/fortconquer/scenes/SmartEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->detachSelf()Z

    .line 597
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg$3;->this$0:Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;

    invoke-static {v0}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->access$2(Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;)Lcom/droidhen/fortconquer/scenes/SmartEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/SmartEntity;->detachChildren()V

    .line 598
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg$3;->this$0:Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;

    invoke-static {v1}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->access$3(Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;)Lcom/droidhen/andplugin/ComposedAnimatedButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/scenes/GameScene;->unregisterTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)Z

    .line 599
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg$3;->this$0:Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->clear()V

    .line 600
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg$3;->val$scene:Lcom/droidhen/fortconquer/scenes/SmartScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/SmartScene;->setupScene()V

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/anddev/andengine/opengl/texture/Texture;

    const/4 v1, 0x0

    .line 601
    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg$3;->val$fontTexture:Lorg/anddev/andengine/opengl/texture/Texture;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg$3;->val$fontTextureS:Lorg/anddev/andengine/opengl/texture/Texture;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg$3;->val$starTexture:Lcom/droidhen/andplugin/PlistTexture;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/droidhen/fortconquer/AppContext;->unloadTextures([Lorg/anddev/andengine/opengl/texture/Texture;)V

    .line 602
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg$3;->this$0:Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;->access$4(Lcom/droidhen/fortconquer/scenes/StageCompleteDlg;Lcom/droidhen/andplugin/ComposedAnimatedButton;)V

    .line 603
    return-void
.end method
