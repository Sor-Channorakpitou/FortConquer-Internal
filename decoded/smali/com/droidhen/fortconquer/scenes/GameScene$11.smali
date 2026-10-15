.class Lcom/droidhen/fortconquer/scenes/GameScene$11;
.super Ljava/lang/Object;
.source "GameScene.java"

# interfaces
.implements Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/scenes/GameScene;->createCameraShakeModifier()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/scenes/GameScene;


# direct methods
.method constructor <init>(Lcom/droidhen/fortconquer/scenes/GameScene;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/GameScene$11;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onModifierFinished(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/anddev/andengine/util/modifier/IModifier;

    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lcom/droidhen/fortconquer/scenes/GameScene$11;->onModifierFinished(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method public onModifierFinished(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V
    .locals 0
    .param p2, "pItem"    # Lorg/anddev/andengine/entity/IEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<",
            "Lorg/anddev/andengine/entity/IEntity;",
            ">;",
            "Lorg/anddev/andengine/entity/IEntity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, "pModifier":Lorg/anddev/andengine/util/modifier/IModifier;, "Lorg/anddev/andengine/util/modifier/IModifier<Lorg/anddev/andengine/entity/IEntity;>;"
    return-void
.end method

.method public bridge synthetic onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/anddev/andengine/util/modifier/IModifier;

    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lcom/droidhen/fortconquer/scenes/GameScene$11;->onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method public onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V
    .locals 4
    .param p2, "pItem"    # Lorg/anddev/andengine/entity/IEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<",
            "Lorg/anddev/andengine/entity/IEntity;",
            ">;",
            "Lorg/anddev/andengine/entity/IEntity;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "pModifier":Lorg/anddev/andengine/util/modifier/IModifier;, "Lorg/anddev/andengine/util/modifier/IModifier<Lorg/anddev/andengine/entity/IEntity;>;"
    const/high16 v2, 0x42480000    # 50.0f

    const/4 v3, 0x5

    .line 290
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$11;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mShakeRange:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 291
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$11;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iput v3, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mShakeRange:I

    .line 295
    :goto_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$11;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mShakeRange:I

    if-ne v0, v3, :cond_0

    .line 296
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$11;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene$11;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v1}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterX()F

    move-result v1

    iput v1, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCameraX:F

    .line 297
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$11;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/GameScene$11;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v1, v1, Lcom/droidhen/fortconquer/scenes/GameScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v1}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterY()F

    move-result v1

    iput v1, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCameraY:F

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$11;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    check-cast v0, Lorg/anddev/andengine/engine/camera/SmoothCamera;

    invoke-virtual {v0, v2, v2}, Lorg/anddev/andengine/engine/camera/SmoothCamera;->setMaxVelocity(FF)V

    .line 300
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$11;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v1, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$11;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterX()F

    move-result v0

    iget-object v2, p0, Lcom/droidhen/fortconquer/scenes/GameScene$11;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget v2, v2, Lcom/droidhen/fortconquer/scenes/GameScene;->mShakeRange:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    .line 301
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$11;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mShakeRange:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$11;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterY()F

    move-result v0

    iget-object v3, p0, Lcom/droidhen/fortconquer/scenes/GameScene$11;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget v3, v3, Lcom/droidhen/fortconquer/scenes/GameScene;->mShakeRange:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    .line 300
    :goto_1
    invoke-virtual {v1, v2, v0}, Lorg/anddev/andengine/engine/camera/Camera;->setCenter(FF)V

    .line 302
    return-void

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$11;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget v1, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mShakeRange:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mShakeRange:I

    goto :goto_0

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/GameScene$11;->this$0:Lcom/droidhen/fortconquer/scenes/GameScene;

    iget-object v0, v0, Lcom/droidhen/fortconquer/scenes/GameScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterY()F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v0, v3

    goto :goto_1
.end method
