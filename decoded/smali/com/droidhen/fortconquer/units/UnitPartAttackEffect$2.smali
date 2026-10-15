.class Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$2;
.super Ljava/lang/Object;
.source "UnitPartAttackEffect.java"

# interfaces
.implements Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;


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
.method constructor <init>(Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$2;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    .line 163
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

    invoke-virtual {p0, p1, p2}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$2;->onModifierFinished(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method public onModifierFinished(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V
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
    const/4 v3, 0x2

    .line 174
    sget v0, Lcom/droidhen/fortconquer/scenes/GameScene;->sAttackSoundCount:I

    if-ge v0, v3, :cond_0

    .line 176
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sSoundPlayer:Lcom/droidhen/fortconquer/sounds/SoundPlayer;

    sget-object v1, Lcom/droidhen/fortconquer/stages/StageDataConstants;->UNIT_BASE_PROPS:[[F

    iget-object v2, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$2;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget v2, v2, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mRace:I

    aget-object v1, v1, v2

    const/4 v2, 0x7

    aget v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/sounds/SoundPlayer;->playSound(I)V

    .line 177
    sget v0, Lcom/droidhen/fortconquer/scenes/GameScene;->sAttackSoundCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/droidhen/fortconquer/scenes/GameScene;->sAttackSoundCount:I

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$2;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mPartType:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$2;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$2;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mAttackTarget:Lcom/droidhen/fortconquer/units/UnitPart;

    iget-object v0, v0, Lcom/droidhen/fortconquer/units/UnitPart;->mState:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    sget-object v1, Lcom/droidhen/fortconquer/units/UnitPart$UnitState;->UNIT_DEAD:Lcom/droidhen/fortconquer/units/UnitPart$UnitState;

    if-eq v0, v1, :cond_2

    .line 181
    :cond_1
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lorg/anddev/andengine/entity/IEntity;->setVisible(Z)V

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$2;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mPartType:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_4

    .line 183
    check-cast p2, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    .end local p2    # "pItem":Lorg/anddev/andengine/entity/IEntity;
    const-wide/16 v0, 0x53

    invoke-virtual {p2, v0, v1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate(J)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    .line 193
    :cond_3
    :goto_0
    return-void

    .line 184
    .restart local p2    # "pItem":Lorg/anddev/andengine/entity/IEntity;
    :cond_4
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$2;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->getCamp()I

    move-result v0

    if-eq v0, v3, :cond_6

    .line 185
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$2;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mRace:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$2;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mRace:I

    if-ne v0, v3, :cond_7

    :cond_5
    iget-object v0, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$2;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget v0, v0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mPartType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_7

    .line 187
    :cond_6
    check-cast p2, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    .end local p2    # "pItem":Lorg/anddev/andengine/entity/IEntity;
    const/high16 v0, 0x42a60000    # 83.0f

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$2;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mDurationMakeup:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate(J)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    goto :goto_0

    .line 189
    .restart local p2    # "pItem":Lorg/anddev/andengine/entity/IEntity;
    :cond_7
    instance-of v0, p2, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    if-eqz v0, :cond_3

    .line 191
    check-cast p2, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    .end local p2    # "pItem":Lorg/anddev/andengine/entity/IEntity;
    const/high16 v0, 0x42240000    # 41.0f

    iget-object v1, p0, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$2;->this$0:Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;

    iget v1, v1, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect;->mDurationMakeup:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate(J)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    goto :goto_0
.end method

.method public bridge synthetic onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/anddev/andengine/util/modifier/IModifier;

    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lcom/droidhen/fortconquer/units/UnitPartAttackEffect$2;->onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method public onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V
    .locals 1
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
    .line 168
    .local p1, "pModifier":Lorg/anddev/andengine/util/modifier/IModifier;, "Lorg/anddev/andengine/util/modifier/IModifier<Lorg/anddev/andengine/entity/IEntity;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p2, v0}, Lorg/anddev/andengine/entity/IEntity;->setAlpha(F)V

    .line 169
    return-void
.end method
