.class Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$4;
.super Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;
.source "UnitPartAttackEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->createAttackEffectModifiers([Lorg/anddev/andengine/entity/modifier/IEntityModifier;[Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;


# direct methods
.method varargs constructor <init>(Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;[Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V
    .locals 0
    .param p2, "$anonymous0"    # Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;
    .param p3, "$anonymous1"    # [Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$4;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    .line 206
    invoke-direct {p0, p2, p3}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>(Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;[Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onUpdate(FLjava/lang/Object;)F
    .locals 1

    .prologue
    .line 1
    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$4;->onUpdate(FLorg/anddev/andengine/entity/IEntity;)F

    move-result v0

    return v0
.end method

.method public onUpdate(FLorg/anddev/andengine/entity/IEntity;)F
    .locals 5
    .param p1, "pSecondsElapsed"    # F
    .param p2, "pItem"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x41a00000    # 20.0f

    const v2, 0x3f19999a    # 0.6f

    .line 225
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$4;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mPartType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$4;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mRace:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    .line 227
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$4;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$4;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    instance-of v0, v0, Lcom/droidhen/fortconquer/units/Fort;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$4;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->getCamp()I

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$4;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-boolean v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mbLeftSide:Z

    if-eqz v0, :cond_3

    .line 230
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$4;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->getX()F

    move-result v1

    move-object v0, p2

    check-cast v0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->getWidthScaled()F

    move-result v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$4;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mTargetX:F

    sub-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 231
    invoke-interface {p2}, Lorg/anddev/andengine/entity/IEntity;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 233
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$4;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPart;->showHurtEffect()V

    :cond_0
    :goto_0
    move-object v0, p2

    .line 241
    check-cast v0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->getCurrentTileIndex()I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$4;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-boolean v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mbLeftSide:Z

    if-eqz v0, :cond_4

    .line 243
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$4;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->getX()F

    move-result v1

    move-object v0, p2

    check-cast v0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->getWidthScaled()F

    move-result v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$4;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mTargetX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 244
    invoke-interface {p2}, Lorg/anddev/andengine/entity/IEntity;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 246
    invoke-interface {p2, v4}, Lorg/anddev/andengine/entity/IEntity;->setVisible(Z)V

    .line 248
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$4;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$4;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPart;->showHurtEffect()V

    .line 269
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;->onUpdate(FLjava/lang/Object;)F

    move-result v0

    return v0

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$4;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-boolean v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mbLeftSide:Z

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$4;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$4;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mTargetX:F

    add-float/2addr v1, v3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 237
    invoke-interface {p2}, Lorg/anddev/andengine/entity/IEntity;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$4;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPart;->showHurtEffect()V

    goto :goto_0

    :cond_4
    move-object v0, p2

    .line 251
    check-cast v0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->getCurrentTileIndex()I

    move-result v0

    if-nez v0, :cond_5

    move-object v0, p2

    check-cast v0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    :cond_5
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$4;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-boolean v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mbLeftSide:Z

    if-nez v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$4;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$4;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mTargetX:F

    const/high16 v2, 0x40a00000    # 5.0f

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 254
    invoke-interface {p2}, Lorg/anddev/andengine/entity/IEntity;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    invoke-interface {p2, v4}, Lorg/anddev/andengine/entity/IEntity;->setVisible(Z)V

    .line 258
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$4;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    if-eqz v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$4;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPart;->showHurtEffect()V

    goto :goto_1

    .line 265
    :cond_6
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$4;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mPartType:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$4;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mBaseSprite:Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->hasParent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$4;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$4;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$4;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPart;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_DEAD:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-ne v0, v1, :cond_2

    .line 267
    :cond_7
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$4;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v1, v1, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->detachRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/GameActivity;->runOnUpdateThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1
.end method
