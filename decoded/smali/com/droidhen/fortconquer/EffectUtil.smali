.class public Lcom/droidhen/fortconquer/EffectUtil;
.super Ljava/lang/Object;
.source "EffectUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/droidhen/fortconquer/EffectUtil$INSTANCES;,
        Lcom/droidhen/fortconquer/EffectUtil$InnerOwnerModifier;,
        Lcom/droidhen/fortconquer/EffectUtil$MOVE;,
        Lcom/droidhen/fortconquer/EffectUtil$SeqModifier;
    }
.end annotation


# static fields
.field private static entity:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/anddev/andengine/entity/IEntity;",
            ">;"
        }
    .end annotation
.end field

.field private static taskList:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/anddev/andengine/entity/modifier/IEntityModifier;",
            ">;>;"
        }
    .end annotation
.end field

.field public static timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/droidhen/fortconquer/EffectUtil;->timer:Ljava/util/Timer;

    .line 30
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/droidhen/fortconquer/EffectUtil;->taskList:Ljava/lang/ThreadLocal;

    .line 32
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/droidhen/fortconquer/EffectUtil;->entity:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addQueue(Lorg/anddev/andengine/entity/IEntity;Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V
    .locals 2
    .param p0, "entity"    # Lorg/anddev/andengine/entity/IEntity;
    .param p1, "modifier"    # Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .prologue
    .line 174
    new-instance v0, Lcom/droidhen/fortconquer/EffectUtil$InnerOwnerModifier;

    invoke-direct {v0, p0, p1}, Lcom/droidhen/fortconquer/EffectUtil$InnerOwnerModifier;-><init>(Lorg/anddev/andengine/entity/IEntity;Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 175
    .local v0, "innerModifier":Lcom/droidhen/fortconquer/EffectUtil$InnerOwnerModifier;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/EffectUtil$InnerOwnerModifier;->setRemoveWhenFinished(Z)V

    .line 176
    sget-object v1, Lcom/droidhen/fortconquer/EffectUtil;->taskList:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    return-void
.end method

.method public static alpha(Lorg/anddev/andengine/entity/IEntity;FI)Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .locals 3
    .param p0, "entity"    # Lorg/anddev/andengine/entity/IEntity;
    .param p1, "to"    # F
    .param p2, "time"    # I

    .prologue
    .line 77
    new-instance v0, Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    int-to-float v1, p2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-interface {p0}, Lorg/anddev/andengine/entity/IEntity;->getAlpha()F

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFF)V

    .line 78
    .local v0, "modifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    invoke-static {}, Lcom/droidhen/fortconquer/EffectUtil;->isInQueue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-static {p0, v0}, Lcom/droidhen/fortconquer/EffectUtil;->addQueue(Lorg/anddev/andengine/entity/IEntity;Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 83
    :goto_0
    return-object v0

    .line 81
    :cond_0
    invoke-interface {p0, v0}, Lorg/anddev/andengine/entity/IEntity;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    goto :goto_0
.end method

.method public static blank(Lorg/anddev/andengine/entity/IEntity;I)Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .locals 1
    .param p0, "bondEntity"    # Lorg/anddev/andengine/entity/IEntity;
    .param p1, "time"    # I

    .prologue
    .line 145
    sget-object v0, Lcom/droidhen/fortconquer/EffectUtil$INSTANCES$COND;->NEVER:Lcom/droidhen/andplugin/modifier/TriggerCondition;

    invoke-static {p0, p1, v0}, Lcom/droidhen/fortconquer/EffectUtil;->blockUntil(Lorg/anddev/andengine/entity/IEntity;ILcom/droidhen/andplugin/modifier/TriggerCondition;)Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v0

    return-object v0
.end method

.method public static blockUntil(Lorg/anddev/andengine/entity/IEntity;ILcom/droidhen/andplugin/modifier/TriggerCondition;)Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .locals 3
    .param p0, "bondEntity"    # Lorg/anddev/andengine/entity/IEntity;
    .param p1, "expire"    # I
    .param p2, "cond"    # Lcom/droidhen/andplugin/modifier/TriggerCondition;

    .prologue
    .line 135
    new-instance v0, Lcom/droidhen/andplugin/modifier/TriggerModifier;

    int-to-float v1, p1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    sget-object v2, Lcom/droidhen/fortconquer/EffectUtil$INSTANCES$TASK;->NOTHING:Ljava/lang/Runnable;

    invoke-direct {v0, v1, p2, v2}, Lcom/droidhen/andplugin/modifier/TriggerModifier;-><init>(FLcom/droidhen/andplugin/modifier/TriggerCondition;Ljava/lang/Runnable;)V

    .line 136
    .local v0, "modifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    invoke-static {}, Lcom/droidhen/fortconquer/EffectUtil;->isInQueue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-static {p0, v0}, Lcom/droidhen/fortconquer/EffectUtil;->addQueue(Lorg/anddev/andengine/entity/IEntity;Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 141
    :goto_0
    return-object v0

    .line 139
    :cond_0
    invoke-interface {p0, v0}, Lorg/anddev/andengine/entity/IEntity;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    goto :goto_0
.end method

.method public static clearQueue()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 165
    sget-object v0, Lcom/droidhen/fortconquer/EffectUtil;->taskList:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 166
    sget-object v0, Lcom/droidhen/fortconquer/EffectUtil;->entity:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 167
    return-void
.end method

.method public static delayCall(Lorg/anddev/andengine/entity/IEntity;Ljava/lang/Runnable;I)Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .locals 3
    .param p0, "bondEntity"    # Lorg/anddev/andengine/entity/IEntity;
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "delay"    # I

    .prologue
    .line 99
    new-instance v0, Lcom/droidhen/andplugin/modifier/DelayCallModifier;

    int-to-float v1, p2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-direct {v0, v1, p1}, Lcom/droidhen/andplugin/modifier/DelayCallModifier;-><init>(FLjava/lang/Runnable;)V

    .line 100
    .local v0, "modifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    invoke-static {}, Lcom/droidhen/fortconquer/EffectUtil;->isInQueue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-static {p0, v0}, Lcom/droidhen/fortconquer/EffectUtil;->addQueue(Lorg/anddev/andengine/entity/IEntity;Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 105
    :goto_0
    return-object v0

    .line 103
    :cond_0
    invoke-interface {p0, v0}, Lorg/anddev/andengine/entity/IEntity;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    goto :goto_0
.end method

.method public static executeQueue()Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .locals 2

    .prologue
    .line 158
    new-instance v0, Lcom/droidhen/fortconquer/EffectUtil$SeqModifier;

    sget-object v1, Lcom/droidhen/fortconquer/EffectUtil;->taskList:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/droidhen/fortconquer/EffectUtil$SeqModifier;-><init>(Ljava/util/List;)V

    .line 159
    .local v0, "entityModifier":Lcom/droidhen/fortconquer/EffectUtil$SeqModifier;
    sget-object v1, Lcom/droidhen/fortconquer/EffectUtil;->entity:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/anddev/andengine/entity/IEntity;

    invoke-interface {v1, v0}, Lorg/anddev/andengine/entity/IEntity;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 160
    invoke-static {}, Lcom/droidhen/fortconquer/EffectUtil;->clearQueue()V

    .line 161
    return-object v0
.end method

.method public static fly(Lorg/anddev/andengine/entity/IEntity;FFF)Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .locals 2
    .param p0, "entity"    # Lorg/anddev/andengine/entity/IEntity;
    .param p1, "toX"    # F
    .param p2, "toY"    # F
    .param p3, "speed"    # F

    .prologue
    .line 43
    new-instance v0, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;

    invoke-direct {v0, p1, p2, p3}, Lcom/droidhen/andplugin/modifier/ReuseMoveModifier;-><init>(FFF)V

    .line 44
    .local v0, "modifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    invoke-static {}, Lcom/droidhen/fortconquer/EffectUtil;->isInQueue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-static {p0, v0}, Lcom/droidhen/fortconquer/EffectUtil;->addQueue(Lorg/anddev/andengine/entity/IEntity;Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 49
    :goto_0
    return-object v0

    .line 47
    :cond_0
    invoke-interface {p0, v0}, Lorg/anddev/andengine/entity/IEntity;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    goto :goto_0
.end method

.method private static isInQueue()Z
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/droidhen/fortconquer/EffectUtil;->entity:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static moveCamera(Lorg/anddev/andengine/entity/IEntity;FFF)Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .locals 7
    .param p0, "bondEntity"    # Lorg/anddev/andengine/entity/IEntity;
    .param p1, "toX"    # F
    .param p2, "toY"    # F
    .param p3, "speed"    # F

    .prologue
    .line 109
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->getCamera()Lorg/anddev/andengine/engine/camera/SmoothCamera;

    move-result-object v6

    .line 110
    .local v6, "camera":Lorg/anddev/andengine/engine/camera/Camera;
    invoke-virtual {v6}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterX()F

    move-result v1

    invoke-virtual {v6}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterY()F

    move-result v2

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/droidhen/fortconquer/EffectUtil;->moveCamera(Lorg/anddev/andengine/entity/IEntity;FFFFF)Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v0

    return-object v0
.end method

.method public static moveCamera(Lorg/anddev/andengine/entity/IEntity;FFFFF)Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .locals 8
    .param p0, "bondEntity"    # Lorg/anddev/andengine/entity/IEntity;
    .param p1, "fromX"    # F
    .param p2, "fromY"    # F
    .param p3, "toX"    # F
    .param p4, "toY"    # F
    .param p5, "speed"    # F

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 114
    sub-float v2, p3, p1

    float-to-double v2, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-float v4, p4, p2

    float-to-double v4, v4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    .line 115
    .local v0, "distance":F
    new-instance v1, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;

    div-float v2, v0, p5

    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/droidhen/fortconquer/GameActivity;->getCamera()Lorg/anddev/andengine/engine/camera/SmoothCamera;

    move-result-object v3

    invoke-direct {v1, v2, v3, p3, p4}, Lcom/droidhen/andplugin/modifier/CameraCenterModifier;-><init>(FLorg/anddev/andengine/engine/camera/Camera;FF)V

    .line 116
    .local v1, "modifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    invoke-static {}, Lcom/droidhen/fortconquer/EffectUtil;->isInQueue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    invoke-static {p0, v1}, Lcom/droidhen/fortconquer/EffectUtil;->addQueue(Lorg/anddev/andengine/entity/IEntity;Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 121
    :goto_0
    return-object v1

    .line 119
    :cond_0
    invoke-interface {p0, v1}, Lorg/anddev/andengine/entity/IEntity;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    goto :goto_0
.end method

.method public static scale(Lorg/anddev/andengine/entity/IEntity;FFI)Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .locals 6
    .param p0, "entity"    # Lorg/anddev/andengine/entity/IEntity;
    .param p1, "toX"    # F
    .param p2, "toY"    # F
    .param p3, "time"    # I

    .prologue
    .line 60
    new-instance v0, Lorg/anddev/andengine/entity/modifier/ScaleModifier;

    int-to-float v1, p3

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-interface {p0}, Lorg/anddev/andengine/entity/IEntity;->getScaleX()F

    move-result v2

    invoke-interface {p0}, Lorg/anddev/andengine/entity/IEntity;->getScaleY()F

    move-result v4

    move v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/modifier/ScaleModifier;-><init>(FFFFF)V

    .line 61
    .local v0, "modifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    invoke-static {}, Lcom/droidhen/fortconquer/EffectUtil;->isInQueue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-static {p0, v0}, Lcom/droidhen/fortconquer/EffectUtil;->addQueue(Lorg/anddev/andengine/entity/IEntity;Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 66
    :goto_0
    return-object v0

    .line 64
    :cond_0
    invoke-interface {p0, v0}, Lorg/anddev/andengine/entity/IEntity;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    goto :goto_0
.end method

.method public static startQueue(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 2
    .param p0, "entity"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 153
    sget-object v0, Lcom/droidhen/fortconquer/EffectUtil;->taskList:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 154
    sget-object v0, Lcom/droidhen/fortconquer/EffectUtil;->entity:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 155
    return-void
.end method

.method public static trigger(Lorg/anddev/andengine/entity/IEntity;ILcom/droidhen/andplugin/modifier/TriggerCondition;Ljava/lang/Runnable;)Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .locals 3
    .param p0, "bondEntity"    # Lorg/anddev/andengine/entity/IEntity;
    .param p1, "expire"    # I
    .param p2, "cond"    # Lcom/droidhen/andplugin/modifier/TriggerCondition;
    .param p3, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 125
    new-instance v0, Lcom/droidhen/andplugin/modifier/TriggerModifier;

    int-to-float v1, p1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-direct {v0, v1, p2, p3}, Lcom/droidhen/andplugin/modifier/TriggerModifier;-><init>(FLcom/droidhen/andplugin/modifier/TriggerCondition;Ljava/lang/Runnable;)V

    .line 126
    .local v0, "modifier":Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    invoke-static {}, Lcom/droidhen/fortconquer/EffectUtil;->isInQueue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-static {p0, v0}, Lcom/droidhen/fortconquer/EffectUtil;->addQueue(Lorg/anddev/andengine/entity/IEntity;Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 131
    :goto_0
    return-object v0

    .line 129
    :cond_0
    invoke-interface {p0, v0}, Lorg/anddev/andengine/entity/IEntity;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    goto :goto_0
.end method
