.class Lcom/droidhen/fortconquer/scenes/GameScene$21;
.super Ljava/lang/Object;
.source "GameScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/GameScene;->playDragGuide(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

.field private final synthetic val$laneIndex:I


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/GameScene;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/GameScene$21;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iput p2, p0, Lcom/droidhen/fortconquer/scenes/GameScene$21;->val$laneIndex:I

    .line 1257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1260
    const/4 v4, 0x4

    invoke-static {v4}, Lcom/droidhen/fortconquer/component/Guide;->showGuide(I)Z

    .line 1261
    const/high16 v4, 0x42c80000    # 100.0f

    iget v5, p0, Lcom/droidhen/fortconquer/scenes/GameScene$21;->val$laneIndex:I

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    const/high16 v6, 0x42680000    # 58.0f

    mul-float/2addr v5, v6

    add-float v3, v4, v5

    .line 1262
    .local v3, "toY":F
    sget-object v4, Lcom/droidhen/fortconquer/component/Guide;->instance:Lcom/droidhen/fortconquer/component/Guide;

    iget-object v4, v4, Lcom/droidhen/fortconquer/component/Guide;->sHand:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v4

    sub-float v0, v4, v3

    .line 1263
    .local v0, "byY":F
    const/high16 v4, 0x43160000    # 150.0f

    div-float v1, v0, v4

    .line 1264
    .local v1, "duration":F
    new-instance v2, Lcom/droidhen/andplugin/modifier/LoopModifier;

    new-instance v4, Lcom/droidhen/andplugin/modifier/SeqModifier;

    const/4 v5, 0x2

    new-array v5, v5, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    const/4 v6, 0x0

    new-instance v7, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;

    .line 1265
    sget-object v8, Lcom/droidhen/fortconquer/component/Guide;->instance:Lcom/droidhen/fortconquer/component/Guide;

    iget-object v8, v8, Lcom/droidhen/fortconquer/component/Guide;->sHand:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v8}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v8

    const/high16 v9, 0x42480000    # 50.0f

    invoke-direct {v7, v8, v3, v1, v9}, Lcom/droidhen/andplugin/modifier/AcceleratedMoveModifier;-><init>(FFFF)V

    aput-object v7, v5, v6

    new-instance v6, Lorg/anddev/andengine/entity/modifier/MoveByModifier;

    invoke-direct {v6, v1, v10, v0}, Lorg/anddev/andengine/entity/modifier/MoveByModifier;-><init>(FFF)V

    aput-object v6, v5, v11

    invoke-direct {v4, v5}, Lcom/droidhen/andplugin/modifier/SeqModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 1266
    const/4 v5, -0x1

    .line 1264
    invoke-direct {v2, v4, v5}, Lcom/droidhen/andplugin/modifier/LoopModifier;-><init>(Lorg/anddev/andengine/entity/modifier/IEntityModifier;I)V

    .line 1267
    .local v2, "modifier":Lcom/droidhen/andplugin/modifier/LoopModifier;
    sget-object v4, Lcom/droidhen/fortconquer/component/Guide;->instance:Lcom/droidhen/fortconquer/component/Guide;

    iget-object v4, v4, Lcom/droidhen/fortconquer/component/Guide;->sHand:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v4, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 1268
    sget-object v4, Lcom/droidhen/fortconquer/GameActivity;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v4, v4, Lcom/droidhen/fortconquer/scenes/GameScene;->mLaneHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    .line 1269
    iget v5, p0, Lcom/droidhen/fortconquer/scenes/GameScene$21;->val$laneIndex:I

    mul-int/lit8 v5, v5, 0x3a

    add-int/lit8 v5, v5, 0x64

    int-to-float v5, v5

    .line 1268
    invoke-virtual {v4, v10, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    .line 1270
    sget-object v4, Lcom/droidhen/fortconquer/GameActivity;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v4, v4, Lcom/droidhen/fortconquer/scenes/GameScene;->mLaneHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;->setAlpha(F)V

    .line 1271
    sget-object v4, Lcom/droidhen/fortconquer/GameActivity;->mGameScene:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v4, v4, Lcom/droidhen/fortconquer/scenes/GameScene;->mLaneHLSprite:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v4, v11}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    .line 1272
    return-void
.end method
