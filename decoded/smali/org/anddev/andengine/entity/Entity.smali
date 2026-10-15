.class public Lorg/anddev/andengine/entity/Entity;
.super Ljava/lang/Object;
.source "Entity.java"

# interfaces
.implements Lorg/anddev/andengine/entity/IEntity;


# static fields
.field private static final CHILDREN_CAPACITY_DEFAULT:I = 0x4

.field private static final ENTITYMODIFIERS_CAPACITY_DEFAULT:I = 0x4

.field private static final PARAMETERCALLABLE_DETACHCHILD:Lorg/anddev/andengine/util/ParameterCallable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/anddev/andengine/util/ParameterCallable",
            "<",
            "Lorg/anddev/andengine/entity/IEntity;",
            ">;"
        }
    .end annotation
.end field

.field private static final UPDATEHANDLERS_CAPACITY_DEFAULT:I = 0x4

.field private static final VERTICES_LOCAL_TO_SCENE_TMP:[F

.field private static final VERTICES_SCENE_TO_LOCAL_TMP:[F


# instance fields
.field protected mAlpha:F

.field protected mBlue:F

.field protected mChildren:Lorg/anddev/andengine/util/SmartList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/anddev/andengine/util/SmartList",
            "<",
            "Lorg/anddev/andengine/entity/IEntity;",
            ">;"
        }
    .end annotation
.end field

.field protected mChildrenIgnoreUpdate:Z

.field protected mChildrenVisible:Z

.field private mEntityModifiers:Lorg/anddev/andengine/entity/modifier/EntityModifierList;

.field protected mGreen:F

.field protected mIgnoreUpdate:Z

.field private final mInitialX:F

.field private final mInitialY:F

.field private final mLocalToParentTransformation:Lorg/anddev/andengine/util/Transformation;

.field private mLocalToParentTransformationDirty:Z

.field private final mLocalToSceneTransformation:Lorg/anddev/andengine/util/Transformation;

.field private mParent:Lorg/anddev/andengine/entity/IEntity;

.field private final mParentToLocalTransformation:Lorg/anddev/andengine/util/Transformation;

.field private mParentToLocalTransformationDirty:Z

.field protected mRed:F

.field protected mRotation:F

.field protected mRotationCenterX:F

.field protected mRotationCenterY:F

.field protected mScaleCenterX:F

.field protected mScaleCenterY:F

.field protected mScaleX:F

.field protected mScaleY:F

.field private final mSceneToLocalTransformation:Lorg/anddev/andengine/util/Transformation;

.field private mUpdateHandlers:Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

.field private mUserData:Ljava/lang/Object;

.field protected mVisible:Z

.field protected mX:F

.field protected mY:F

.field protected mZIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 37
    new-array v0, v1, [F

    sput-object v0, Lorg/anddev/andengine/entity/Entity;->VERTICES_SCENE_TO_LOCAL_TMP:[F

    .line 38
    new-array v0, v1, [F

    sput-object v0, Lorg/anddev/andengine/entity/Entity;->VERTICES_LOCAL_TO_SCENE_TMP:[F

    .line 40
    new-instance v0, Lorg/anddev/andengine/entity/Entity$1;

    invoke-direct {v0}, Lorg/anddev/andengine/entity/Entity$1;-><init>()V

    sput-object v0, Lorg/anddev/andengine/entity/Entity;->PARAMETERCALLABLE_DETACHCHILD:Lorg/anddev/andengine/util/ParameterCallable;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, v0, v0}, Lorg/anddev/andengine/entity/Entity;-><init>(FF)V

    .line 104
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 4
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v2, p0, Lorg/anddev/andengine/entity/Entity;->mVisible:Z

    .line 53
    iput-boolean v3, p0, Lorg/anddev/andengine/entity/Entity;->mIgnoreUpdate:Z

    .line 54
    iput-boolean v2, p0, Lorg/anddev/andengine/entity/Entity;->mChildrenVisible:Z

    .line 55
    iput-boolean v3, p0, Lorg/anddev/andengine/entity/Entity;->mChildrenIgnoreUpdate:Z

    .line 57
    iput v3, p0, Lorg/anddev/andengine/entity/Entity;->mZIndex:I

    .line 65
    iput v0, p0, Lorg/anddev/andengine/entity/Entity;->mRed:F

    .line 66
    iput v0, p0, Lorg/anddev/andengine/entity/Entity;->mGreen:F

    .line 67
    iput v0, p0, Lorg/anddev/andengine/entity/Entity;->mBlue:F

    .line 68
    iput v0, p0, Lorg/anddev/andengine/entity/Entity;->mAlpha:F

    .line 76
    iput v1, p0, Lorg/anddev/andengine/entity/Entity;->mRotation:F

    .line 78
    iput v1, p0, Lorg/anddev/andengine/entity/Entity;->mRotationCenterX:F

    .line 79
    iput v1, p0, Lorg/anddev/andengine/entity/Entity;->mRotationCenterY:F

    .line 81
    iput v0, p0, Lorg/anddev/andengine/entity/Entity;->mScaleX:F

    .line 82
    iput v0, p0, Lorg/anddev/andengine/entity/Entity;->mScaleY:F

    .line 84
    iput v1, p0, Lorg/anddev/andengine/entity/Entity;->mScaleCenterX:F

    .line 85
    iput v1, p0, Lorg/anddev/andengine/entity/Entity;->mScaleCenterY:F

    .line 87
    iput-boolean v2, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 88
    iput-boolean v2, p0, Lorg/anddev/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 90
    new-instance v0, Lorg/anddev/andengine/util/Transformation;

    invoke-direct {v0}, Lorg/anddev/andengine/util/Transformation;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToParentTransformation:Lorg/anddev/andengine/util/Transformation;

    .line 91
    new-instance v0, Lorg/anddev/andengine/util/Transformation;

    invoke-direct {v0}, Lorg/anddev/andengine/util/Transformation;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mParentToLocalTransformation:Lorg/anddev/andengine/util/Transformation;

    .line 93
    new-instance v0, Lorg/anddev/andengine/util/Transformation;

    invoke-direct {v0}, Lorg/anddev/andengine/util/Transformation;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToSceneTransformation:Lorg/anddev/andengine/util/Transformation;

    .line 94
    new-instance v0, Lorg/anddev/andengine/util/Transformation;

    invoke-direct {v0}, Lorg/anddev/andengine/util/Transformation;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mSceneToLocalTransformation:Lorg/anddev/andengine/util/Transformation;

    .line 107
    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mInitialX:F

    .line 108
    iput p2, p0, Lorg/anddev/andengine/entity/Entity;->mInitialY:F

    .line 110
    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mX:F

    .line 111
    iput p2, p0, Lorg/anddev/andengine/entity/Entity;->mY:F

    .line 112
    return-void
.end method

.method private allocateChildren()V
    .locals 2

    .prologue
    .line 933
    new-instance v0, Lorg/anddev/andengine/util/SmartList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/anddev/andengine/util/SmartList;-><init>(I)V

    iput-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    .line 934
    return-void
.end method

.method private allocateEntityModifiers()V
    .locals 2

    .prologue
    .line 929
    new-instance v0, Lorg/anddev/andengine/entity/modifier/EntityModifierList;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lorg/anddev/andengine/entity/modifier/EntityModifierList;-><init>(Lorg/anddev/andengine/entity/IEntity;I)V

    iput-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mEntityModifiers:Lorg/anddev/andengine/entity/modifier/EntityModifierList;

    .line 930
    return-void
.end method

.method private allocateUpdateHandlers()V
    .locals 2

    .prologue
    .line 937
    new-instance v0, Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/anddev/andengine/engine/handler/UpdateHandlerList;-><init>(I)V

    iput-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mUpdateHandlers:Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

    .line 938
    return-void
.end method


# virtual methods
.method protected applyRotation(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v5, 0x0

    .line 956
    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mRotation:F

    .line 958
    .local v0, "rotation":F
    cmpl-float v3, v0, v5

    if-eqz v3, :cond_0

    .line 959
    iget v1, p0, Lorg/anddev/andengine/entity/Entity;->mRotationCenterX:F

    .line 960
    .local v1, "rotationCenterX":F
    iget v2, p0, Lorg/anddev/andengine/entity/Entity;->mRotationCenterY:F

    .line 962
    .local v2, "rotationCenterY":F
    invoke-interface {p1, v1, v2, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 963
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v5, v5, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 964
    neg-float v3, v1

    neg-float v4, v2

    invoke-interface {p1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 970
    .end local v1    # "rotationCenterX":F
    .end local v2    # "rotationCenterY":F
    :cond_0
    return-void
.end method

.method protected applyScale(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 973
    iget v2, p0, Lorg/anddev/andengine/entity/Entity;->mScaleX:F

    .line 974
    .local v2, "scaleX":F
    iget v3, p0, Lorg/anddev/andengine/entity/Entity;->mScaleY:F

    .line 976
    .local v3, "scaleY":F
    cmpl-float v4, v2, v5

    if-nez v4, :cond_0

    cmpl-float v4, v3, v5

    if-eqz v4, :cond_1

    .line 977
    :cond_0
    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mScaleCenterX:F

    .line 978
    .local v0, "scaleCenterX":F
    iget v1, p0, Lorg/anddev/andengine/entity/Entity;->mScaleCenterY:F

    .line 980
    .local v1, "scaleCenterY":F
    invoke-interface {p1, v0, v1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 981
    invoke-interface {p1, v2, v3, v5}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 982
    neg-float v4, v0

    neg-float v5, v1

    invoke-interface {p1, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 984
    .end local v0    # "scaleCenterX":F
    .end local v1    # "scaleCenterY":F
    :cond_1
    return-void
.end method

.method protected applyTranslation(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 952
    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mX:F

    iget v1, p0, Lorg/anddev/andengine/entity/Entity;->mY:F

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 953
    return-void
.end method

.method public attachChild(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 2
    .param p1, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 482
    invoke-interface {p1}, Lorg/anddev/andengine/entity/IEntity;->hasParent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pEntity already has a parent!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-nez v0, :cond_1

    .line 486
    invoke-direct {p0}, Lorg/anddev/andengine/entity/Entity;->allocateChildren()V

    .line 488
    :cond_1
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/util/SmartList;->add(Ljava/lang/Object;)Z

    .line 489
    invoke-interface {p1, p0}, Lorg/anddev/andengine/entity/IEntity;->setParent(Lorg/anddev/andengine/entity/IEntity;)V

    .line 490
    invoke-interface {p1}, Lorg/anddev/andengine/entity/IEntity;->onAttached()V

    .line 491
    return-void
.end method

.method public attachChild(Lorg/anddev/andengine/entity/IEntity;I)Z
    .locals 3
    .param p1, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;
    .param p2, "pIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 495
    invoke-interface {p1}, Lorg/anddev/andengine/entity/IEntity;->hasParent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "pEntity already has a parent!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 498
    :cond_0
    iget-object v1, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-nez v1, :cond_1

    .line 499
    invoke-direct {p0}, Lorg/anddev/andengine/entity/Entity;->allocateChildren()V

    .line 502
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v1, p2, p1}, Lorg/anddev/andengine/util/SmartList;->add(ILjava/lang/Object;)V

    .line 503
    invoke-interface {p1, p0}, Lorg/anddev/andengine/entity/IEntity;->setParent(Lorg/anddev/andengine/entity/IEntity;)V

    .line 504
    invoke-interface {p1}, Lorg/anddev/andengine/entity/IEntity;->onAttached()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    const/4 v1, 0x1

    .line 507
    :goto_0
    return v1

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public callOnChildren(Lorg/anddev/andengine/entity/IEntity$IEntityCallable;)V
    .locals 1
    .param p1, "pEntityCallable"    # Lorg/anddev/andengine/entity/IEntity$IEntityCallable;

    .prologue
    .line 576
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-nez v0, :cond_0

    .line 580
    :goto_0
    return-void

    .line 579
    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/util/SmartList;->call(Lorg/anddev/andengine/util/ParameterCallable;)V

    goto :goto_0
.end method

.method public callOnChildren(Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;Lorg/anddev/andengine/entity/IEntity$IEntityCallable;)V
    .locals 1
    .param p1, "pEntityMatcher"    # Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;
    .param p2, "pEntityCallable"    # Lorg/anddev/andengine/entity/IEntity$IEntityCallable;

    .prologue
    .line 584
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-nez v0, :cond_0

    .line 588
    :goto_0
    return-void

    .line 587
    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v0, p1, p2}, Lorg/anddev/andengine/util/SmartList;->call(Lorg/anddev/andengine/util/IMatcher;Lorg/anddev/andengine/util/ParameterCallable;)V

    goto :goto_0
.end method

.method public clearEntityModifiers()V
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mEntityModifiers:Lorg/anddev/andengine/entity/modifier/EntityModifierList;

    if-nez v0, :cond_0

    .line 652
    :goto_0
    return-void

    .line 651
    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mEntityModifiers:Lorg/anddev/andengine/entity/modifier/EntityModifierList;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/modifier/EntityModifierList;->clear()V

    goto :goto_0
.end method

.method public clearUpdateHandlers()V
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mUpdateHandlers:Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

    if-nez v0, :cond_0

    .line 620
    :goto_0
    return-void

    .line 619
    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mUpdateHandlers:Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/handler/UpdateHandlerList;->clear()V

    goto :goto_0
.end method

.method public convertLocalToSceneCoordinates(FF)[F
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 773
    sget-object v0, Lorg/anddev/andengine/entity/Entity;->VERTICES_LOCAL_TO_SCENE_TMP:[F

    invoke-virtual {p0, p1, p2, v0}, Lorg/anddev/andengine/entity/Entity;->convertLocalToSceneCoordinates(FF[F)[F

    move-result-object v0

    return-object v0
.end method

.method public convertLocalToSceneCoordinates(FF[F)[F
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pReuse"    # [F

    .prologue
    .line 781
    const/4 v0, 0x0

    aput p1, p3, v0

    .line 782
    const/4 v0, 0x1

    aput p2, p3, v0

    .line 784
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/Entity;->getLocalToSceneTransformation()Lorg/anddev/andengine/util/Transformation;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/anddev/andengine/util/Transformation;->transform([F)V

    .line 786
    return-object p3
.end method

.method public convertLocalToSceneCoordinates([F)[F
    .locals 1
    .param p1, "pCoordinates"    # [F

    .prologue
    .line 794
    sget-object v0, Lorg/anddev/andengine/entity/Entity;->VERTICES_LOCAL_TO_SCENE_TMP:[F

    invoke-virtual {p0, p1, v0}, Lorg/anddev/andengine/entity/Entity;->convertSceneToLocalCoordinates([F[F)[F

    move-result-object v0

    return-object v0
.end method

.method public convertLocalToSceneCoordinates([F[F)[F
    .locals 3
    .param p1, "pCoordinates"    # [F
    .param p2, "pReuse"    # [F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 802
    aget v0, p1, v1

    aput v0, p2, v1

    .line 803
    aget v0, p1, v2

    aput v0, p2, v2

    .line 805
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/Entity;->getLocalToSceneTransformation()Lorg/anddev/andengine/util/Transformation;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/anddev/andengine/util/Transformation;->transform([F)V

    .line 807
    return-object p2
.end method

.method public convertSceneToLocalCoordinates(FF)[F
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 815
    sget-object v0, Lorg/anddev/andengine/entity/Entity;->VERTICES_SCENE_TO_LOCAL_TMP:[F

    invoke-virtual {p0, p1, p2, v0}, Lorg/anddev/andengine/entity/Entity;->convertSceneToLocalCoordinates(FF[F)[F

    move-result-object v0

    return-object v0
.end method

.method public convertSceneToLocalCoordinates(FF[F)[F
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pReuse"    # [F

    .prologue
    .line 823
    const/4 v0, 0x0

    aput p1, p3, v0

    .line 824
    const/4 v0, 0x1

    aput p2, p3, v0

    .line 826
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/Entity;->getSceneToLocalTransformation()Lorg/anddev/andengine/util/Transformation;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/anddev/andengine/util/Transformation;->transform([F)V

    .line 828
    return-object p3
.end method

.method public convertSceneToLocalCoordinates([F)[F
    .locals 1
    .param p1, "pCoordinates"    # [F

    .prologue
    .line 836
    sget-object v0, Lorg/anddev/andengine/entity/Entity;->VERTICES_SCENE_TO_LOCAL_TMP:[F

    invoke-virtual {p0, p1, v0}, Lorg/anddev/andengine/entity/Entity;->convertSceneToLocalCoordinates([F[F)[F

    move-result-object v0

    return-object v0
.end method

.method public convertSceneToLocalCoordinates([F[F)[F
    .locals 3
    .param p1, "pCoordinates"    # [F
    .param p2, "pReuse"    # [F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 844
    aget v0, p1, v1

    aput v0, p2, v1

    .line 845
    aget v0, p1, v2

    aput v0, p2, v2

    .line 847
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/Entity;->getSceneToLocalTransformation()Lorg/anddev/andengine/util/Transformation;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/anddev/andengine/util/Transformation;->transform([F)V

    .line 849
    return-object p2
.end method

.method public detachChild(Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;)Lorg/anddev/andengine/entity/IEntity;
    .locals 2
    .param p1, "pEntityMatcher"    # Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;

    .prologue
    .line 560
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-nez v0, :cond_0

    .line 561
    const/4 v0, 0x0

    .line 563
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    sget-object v1, Lorg/anddev/andengine/entity/Entity;->PARAMETERCALLABLE_DETACHCHILD:Lorg/anddev/andengine/util/ParameterCallable;

    invoke-virtual {v0, p1, v1}, Lorg/anddev/andengine/util/SmartList;->remove(Lorg/anddev/andengine/util/IMatcher;Lorg/anddev/andengine/util/ParameterCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/IEntity;

    goto :goto_0
.end method

.method public detachChild(Lorg/anddev/andengine/entity/IEntity;)Z
    .locals 2
    .param p1, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 552
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-nez v0, :cond_0

    .line 553
    const/4 v0, 0x0

    .line 555
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    sget-object v1, Lorg/anddev/andengine/entity/Entity;->PARAMETERCALLABLE_DETACHCHILD:Lorg/anddev/andengine/util/ParameterCallable;

    invoke-virtual {v0, p1, v1}, Lorg/anddev/andengine/util/SmartList;->remove(Ljava/lang/Object;Lorg/anddev/andengine/util/ParameterCallable;)Z

    move-result v0

    goto :goto_0
.end method

.method public detachChildren()V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-nez v0, :cond_0

    .line 478
    :goto_0
    return-void

    .line 477
    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    sget-object v1, Lorg/anddev/andengine/entity/Entity;->PARAMETERCALLABLE_DETACHCHILD:Lorg/anddev/andengine/util/ParameterCallable;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/util/SmartList;->clear(Lorg/anddev/andengine/util/ParameterCallable;)V

    goto :goto_0
.end method

.method public detachChildren(Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;)Z
    .locals 2
    .param p1, "pEntityMatcher"    # Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;

    .prologue
    .line 568
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-nez v0, :cond_0

    .line 569
    const/4 v0, 0x0

    .line 571
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    sget-object v1, Lorg/anddev/andengine/entity/Entity;->PARAMETERCALLABLE_DETACHCHILD:Lorg/anddev/andengine/util/ParameterCallable;

    invoke-virtual {v0, p1, v1}, Lorg/anddev/andengine/util/SmartList;->removeAll(Lorg/anddev/andengine/util/IMatcher;Lorg/anddev/andengine/util/ParameterCallable;)Z

    move-result v0

    goto :goto_0
.end method

.method public detachSelf()Z
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mParent:Lorg/anddev/andengine/entity/IEntity;

    .line 465
    .local v0, "parent":Lorg/anddev/andengine/entity/IEntity;
    if-eqz v0, :cond_0

    .line 466
    invoke-interface {v0, p0}, Lorg/anddev/andengine/entity/IEntity;->detachChild(Lorg/anddev/andengine/entity/IEntity;)Z

    move-result v1

    .line 468
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected doDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 0
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;

    .prologue
    .line 926
    return-void
.end method

.method public findChild(Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;)Lorg/anddev/andengine/entity/IEntity;
    .locals 1
    .param p1, "pEntityMatcher"    # Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;

    .prologue
    .line 513
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-nez v0, :cond_0

    .line 514
    const/4 v0, 0x0

    .line 516
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/util/SmartList;->find(Lorg/anddev/andengine/util/IMatcher;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/IEntity;

    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mAlpha:F

    return v0
.end method

.method public getBlue()F
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mBlue:F

    return v0
.end method

.method public getChild(I)Lorg/anddev/andengine/entity/IEntity;
    .locals 1
    .param p1, "pIndex"    # I

    .prologue
    .line 418
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-nez v0, :cond_0

    .line 419
    const/4 v0, 0x0

    .line 421
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/util/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/IEntity;

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-nez v0, :cond_0

    .line 411
    const/4 v0, 0x0

    .line 413
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v0}, Lorg/anddev/andengine/util/SmartList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getChildIndex(Lorg/anddev/andengine/entity/IEntity;)I
    .locals 1
    .param p1, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 426
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/anddev/andengine/entity/IEntity;->getParent()Lorg/anddev/andengine/entity/IEntity;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 427
    :cond_0
    const/4 v0, -0x1

    .line 429
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/util/SmartList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public getFirstChild()Lorg/anddev/andengine/entity/IEntity;
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-nez v0, :cond_0

    .line 449
    const/4 v0, 0x0

    .line 451
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/util/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/IEntity;

    goto :goto_0
.end method

.method public getGreen()F
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mGreen:F

    return v0
.end method

.method public getInitialX()F
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mInitialX:F

    return v0
.end method

.method public getInitialY()F
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mInitialY:F

    return v0
.end method

.method public getLastChild()Lorg/anddev/andengine/entity/IEntity;
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-nez v0, :cond_0

    .line 457
    const/4 v0, 0x0

    .line 459
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    iget-object v1, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v1}, Lorg/anddev/andengine/util/SmartList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/util/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/IEntity;

    goto :goto_0
.end method

.method public getLocalToParentTransformation()Lorg/anddev/andengine/util/Transformation;
    .locals 10

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 660
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToParentTransformation:Lorg/anddev/andengine/util/Transformation;

    .line 661
    .local v0, "localToParentTransformation":Lorg/anddev/andengine/util/Transformation;
    iget-boolean v8, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    if-eqz v8, :cond_3

    .line 662
    invoke-virtual {v0}, Lorg/anddev/andengine/util/Transformation;->setToIdentity()V

    .line 665
    iget v6, p0, Lorg/anddev/andengine/entity/Entity;->mScaleX:F

    .line 666
    .local v6, "scaleX":F
    iget v7, p0, Lorg/anddev/andengine/entity/Entity;->mScaleY:F

    .line 667
    .local v7, "scaleY":F
    cmpl-float v8, v6, v9

    if-nez v8, :cond_0

    cmpl-float v8, v7, v9

    if-eqz v8, :cond_1

    .line 668
    :cond_0
    iget v4, p0, Lorg/anddev/andengine/entity/Entity;->mScaleCenterX:F

    .line 669
    .local v4, "scaleCenterX":F
    iget v5, p0, Lorg/anddev/andengine/entity/Entity;->mScaleCenterY:F

    .line 674
    .local v5, "scaleCenterY":F
    neg-float v8, v4

    neg-float v9, v5

    invoke-virtual {v0, v8, v9}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    .line 675
    invoke-virtual {v0, v6, v7}, Lorg/anddev/andengine/util/Transformation;->postScale(FF)V

    .line 676
    invoke-virtual {v0, v4, v5}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    .line 683
    .end local v4    # "scaleCenterX":F
    .end local v5    # "scaleCenterY":F
    :cond_1
    iget v1, p0, Lorg/anddev/andengine/entity/Entity;->mRotation:F

    .line 684
    .local v1, "rotation":F
    const/4 v8, 0x0

    cmpl-float v8, v1, v8

    if-eqz v8, :cond_2

    .line 685
    iget v2, p0, Lorg/anddev/andengine/entity/Entity;->mRotationCenterX:F

    .line 686
    .local v2, "rotationCenterX":F
    iget v3, p0, Lorg/anddev/andengine/entity/Entity;->mRotationCenterY:F

    .line 688
    .local v3, "rotationCenterY":F
    neg-float v8, v2

    neg-float v9, v3

    invoke-virtual {v0, v8, v9}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    .line 689
    invoke-virtual {v0, v1}, Lorg/anddev/andengine/util/Transformation;->postRotate(F)V

    .line 690
    invoke-virtual {v0, v2, v3}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    .line 694
    .end local v2    # "rotationCenterX":F
    .end local v3    # "rotationCenterY":F
    :cond_2
    iget v8, p0, Lorg/anddev/andengine/entity/Entity;->mX:F

    iget v9, p0, Lorg/anddev/andengine/entity/Entity;->mY:F

    invoke-virtual {v0, v8, v9}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    .line 696
    const/4 v8, 0x0

    iput-boolean v8, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 698
    .end local v1    # "rotation":F
    .end local v6    # "scaleX":F
    .end local v7    # "scaleY":F
    :cond_3
    return-object v0
.end method

.method public getLocalToSceneTransformation()Lorg/anddev/andengine/util/Transformation;
    .locals 3

    .prologue
    .line 743
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToSceneTransformation:Lorg/anddev/andengine/util/Transformation;

    .line 744
    .local v0, "localToSceneTransformation":Lorg/anddev/andengine/util/Transformation;
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/Entity;->getLocalToParentTransformation()Lorg/anddev/andengine/util/Transformation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/anddev/andengine/util/Transformation;->setTo(Lorg/anddev/andengine/util/Transformation;)V

    .line 746
    iget-object v1, p0, Lorg/anddev/andengine/entity/Entity;->mParent:Lorg/anddev/andengine/entity/IEntity;

    .line 747
    .local v1, "parent":Lorg/anddev/andengine/entity/IEntity;
    if-eqz v1, :cond_0

    .line 748
    invoke-interface {v1}, Lorg/anddev/andengine/entity/IEntity;->getLocalToSceneTransformation()Lorg/anddev/andengine/util/Transformation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/anddev/andengine/util/Transformation;->postConcat(Lorg/anddev/andengine/util/Transformation;)V

    .line 751
    :cond_0
    return-object v0
.end method

.method public getParent()Lorg/anddev/andengine/entity/IEntity;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mParent:Lorg/anddev/andengine/entity/IEntity;

    return-object v0
.end method

.method public getParentToLocalTransformation()Lorg/anddev/andengine/util/Transformation;
    .locals 11

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    .line 702
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mParentToLocalTransformation:Lorg/anddev/andengine/util/Transformation;

    .line 703
    .local v0, "parentToLocalTransformation":Lorg/anddev/andengine/util/Transformation;
    iget-boolean v8, p0, Lorg/anddev/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    if-eqz v8, :cond_3

    .line 704
    invoke-virtual {v0}, Lorg/anddev/andengine/util/Transformation;->setToIdentity()V

    .line 707
    iget v8, p0, Lorg/anddev/andengine/entity/Entity;->mX:F

    neg-float v8, v8

    iget v9, p0, Lorg/anddev/andengine/entity/Entity;->mY:F

    neg-float v9, v9

    invoke-virtual {v0, v8, v9}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    .line 710
    iget v1, p0, Lorg/anddev/andengine/entity/Entity;->mRotation:F

    .line 711
    .local v1, "rotation":F
    const/4 v8, 0x0

    cmpl-float v8, v1, v8

    if-eqz v8, :cond_0

    .line 712
    iget v2, p0, Lorg/anddev/andengine/entity/Entity;->mRotationCenterX:F

    .line 713
    .local v2, "rotationCenterX":F
    iget v3, p0, Lorg/anddev/andengine/entity/Entity;->mRotationCenterY:F

    .line 715
    .local v3, "rotationCenterY":F
    neg-float v8, v2

    neg-float v9, v3

    invoke-virtual {v0, v8, v9}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    .line 716
    neg-float v8, v1

    invoke-virtual {v0, v8}, Lorg/anddev/andengine/util/Transformation;->postRotate(F)V

    .line 717
    invoke-virtual {v0, v2, v3}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    .line 724
    .end local v2    # "rotationCenterX":F
    .end local v3    # "rotationCenterY":F
    :cond_0
    iget v6, p0, Lorg/anddev/andengine/entity/Entity;->mScaleX:F

    .line 725
    .local v6, "scaleX":F
    iget v7, p0, Lorg/anddev/andengine/entity/Entity;->mScaleY:F

    .line 726
    .local v7, "scaleY":F
    cmpl-float v8, v6, v10

    if-nez v8, :cond_1

    cmpl-float v8, v7, v10

    if-eqz v8, :cond_2

    .line 727
    :cond_1
    iget v4, p0, Lorg/anddev/andengine/entity/Entity;->mScaleCenterX:F

    .line 728
    .local v4, "scaleCenterX":F
    iget v5, p0, Lorg/anddev/andengine/entity/Entity;->mScaleCenterY:F

    .line 730
    .local v5, "scaleCenterY":F
    neg-float v8, v4

    neg-float v9, v5

    invoke-virtual {v0, v8, v9}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    .line 731
    div-float v8, v10, v6

    div-float v9, v10, v7

    invoke-virtual {v0, v8, v9}, Lorg/anddev/andengine/util/Transformation;->postScale(FF)V

    .line 732
    invoke-virtual {v0, v4, v5}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    .line 735
    .end local v4    # "scaleCenterX":F
    .end local v5    # "scaleCenterY":F
    :cond_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Lorg/anddev/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 737
    .end local v1    # "rotation":F
    .end local v6    # "scaleX":F
    .end local v7    # "scaleY":F
    :cond_3
    return-object v0
.end method

.method public getRed()F
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mRed:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mRotation:F

    return v0
.end method

.method public getRotationCenterX()F
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mRotationCenterX:F

    return v0
.end method

.method public getRotationCenterY()F
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mRotationCenterY:F

    return v0
.end method

.method public getScaleCenterX()F
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mScaleCenterX:F

    return v0
.end method

.method public getScaleCenterY()F
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mScaleCenterY:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mScaleY:F

    return v0
.end method

.method public getSceneCenterCoordinates()[F
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 656
    invoke-virtual {p0, v0, v0}, Lorg/anddev/andengine/entity/Entity;->convertLocalToSceneCoordinates(FF)[F

    move-result-object v0

    return-object v0
.end method

.method public getSceneToLocalTransformation()Lorg/anddev/andengine/util/Transformation;
    .locals 3

    .prologue
    .line 757
    iget-object v1, p0, Lorg/anddev/andengine/entity/Entity;->mSceneToLocalTransformation:Lorg/anddev/andengine/util/Transformation;

    .line 758
    .local v1, "sceneToLocalTransformation":Lorg/anddev/andengine/util/Transformation;
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/Entity;->getParentToLocalTransformation()Lorg/anddev/andengine/util/Transformation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/util/Transformation;->setTo(Lorg/anddev/andengine/util/Transformation;)V

    .line 760
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mParent:Lorg/anddev/andengine/entity/IEntity;

    .line 761
    .local v0, "parent":Lorg/anddev/andengine/entity/IEntity;
    if-eqz v0, :cond_0

    .line 762
    invoke-interface {v0}, Lorg/anddev/andengine/entity/IEntity;->getSceneToLocalTransformation()Lorg/anddev/andengine/util/Transformation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/util/Transformation;->postConcat(Lorg/anddev/andengine/util/Transformation;)V

    .line 765
    :cond_0
    return-object v1
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mUserData:Ljava/lang/Object;

    return-object v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mY:F

    return v0
.end method

.method public getZIndex()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mZIndex:I

    return v0
.end method

.method public hasParent()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mParent:Lorg/anddev/andengine/entity/IEntity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChildrenIgnoreUpdate()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildrenIgnoreUpdate:Z

    return v0
.end method

.method public isChildrenVisible()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildrenVisible:Z

    return v0
.end method

.method public isIgnoreUpdate()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mIgnoreUpdate:Z

    return v0
.end method

.method public isRotated()Z
    .locals 2

    .prologue
    .line 235
    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mRotation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScaled()Z
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 279
    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mScaleX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mScaleY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mVisible:Z

    return v0
.end method

.method protected onApplyTransformations(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 942
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/Entity;->applyTranslation(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 945
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/Entity;->applyRotation(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 948
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/Entity;->applyScale(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 949
    return-void
.end method

.method public onAttached()V
    .locals 0

    .prologue
    .line 855
    return-void
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 860
    return-void
.end method

.method public final onDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 1
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;

    .prologue
    .line 874
    iget-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mVisible:Z

    if-eqz v0, :cond_0

    .line 875
    invoke-virtual {p0, p1, p2}, Lorg/anddev/andengine/entity/Entity;->onManagedDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    .line 877
    :cond_0
    return-void
.end method

.method protected onDrawChildren(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 1
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;

    .prologue
    .line 999
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildrenVisible:Z

    if-eqz v0, :cond_0

    .line 1000
    invoke-virtual {p0, p1, p2}, Lorg/anddev/andengine/entity/Entity;->onManagedDrawChildren(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    .line 1002
    :cond_0
    return-void
.end method

.method protected onManagedDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 0
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;

    .prologue
    .line 987
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 989
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/Entity;->onApplyTransformations(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 991
    invoke-virtual {p0, p1, p2}, Lorg/anddev/andengine/entity/Entity;->doDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    .line 993
    invoke-virtual {p0, p1, p2}, Lorg/anddev/andengine/entity/Entity;->onDrawChildren(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    .line 995
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 996
    return-void
.end method

.method public onManagedDrawChildren(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 4
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;

    .prologue
    .line 1005
    iget-object v1, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    .line 1006
    .local v1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/entity/IEntity;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1007
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 1010
    return-void

    .line 1008
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/anddev/andengine/entity/IEntity;

    invoke-interface {v3, p1, p2}, Lorg/anddev/andengine/entity/IEntity;->onDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    .line 1007
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected onManagedUpdate(F)V
    .locals 4
    .param p1, "pSecondsElapsed"    # F

    .prologue
    .line 1013
    iget-object v3, p0, Lorg/anddev/andengine/entity/Entity;->mEntityModifiers:Lorg/anddev/andengine/entity/modifier/EntityModifierList;

    if-eqz v3, :cond_0

    .line 1014
    iget-object v3, p0, Lorg/anddev/andengine/entity/Entity;->mEntityModifiers:Lorg/anddev/andengine/entity/modifier/EntityModifierList;

    invoke-virtual {v3, p1}, Lorg/anddev/andengine/entity/modifier/EntityModifierList;->onUpdate(F)V

    .line 1016
    :cond_0
    iget-object v3, p0, Lorg/anddev/andengine/entity/Entity;->mUpdateHandlers:Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

    if-eqz v3, :cond_1

    .line 1017
    iget-object v3, p0, Lorg/anddev/andengine/entity/Entity;->mUpdateHandlers:Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

    invoke-virtual {v3, p1}, Lorg/anddev/andengine/engine/handler/UpdateHandlerList;->onUpdate(F)V

    .line 1020
    :cond_1
    iget-object v3, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lorg/anddev/andengine/entity/Entity;->mChildrenIgnoreUpdate:Z

    if-nez v3, :cond_2

    .line 1021
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    .line 1022
    .local v0, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/entity/IEntity;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1023
    .local v1, "entityCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_3

    .line 1027
    .end local v0    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/entity/IEntity;>;"
    .end local v1    # "entityCount":I
    .end local v2    # "i":I
    :cond_2
    return-void

    .line 1024
    .restart local v0    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/entity/IEntity;>;"
    .restart local v1    # "entityCount":I
    .restart local v2    # "i":I
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/anddev/andengine/entity/IEntity;

    invoke-interface {v3, p1}, Lorg/anddev/andengine/entity/IEntity;->onUpdate(F)V

    .line 1023
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final onUpdate(F)V
    .locals 1
    .param p1, "pSecondsElapsed"    # F

    .prologue
    .line 881
    iget-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mIgnoreUpdate:Z

    if-nez v0, :cond_0

    .line 882
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/Entity;->onManagedUpdate(F)V

    .line 884
    :cond_0
    return-void
.end method

.method public registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V
    .locals 1
    .param p1, "pEntityModifier"    # Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .prologue
    .line 624
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mEntityModifiers:Lorg/anddev/andengine/entity/modifier/EntityModifierList;

    if-nez v0, :cond_0

    .line 625
    invoke-direct {p0}, Lorg/anddev/andengine/entity/Entity;->allocateEntityModifiers()V

    .line 627
    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mEntityModifiers:Lorg/anddev/andengine/entity/modifier/EntityModifierList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/modifier/EntityModifierList;->add(Ljava/lang/Object;)Z

    .line 628
    return-void
.end method

.method public registerUpdateHandler(Lorg/anddev/andengine/engine/handler/IUpdateHandler;)V
    .locals 1
    .param p1, "pUpdateHandler"    # Lorg/anddev/andengine/engine/handler/IUpdateHandler;

    .prologue
    .line 592
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mUpdateHandlers:Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

    if-nez v0, :cond_0

    .line 593
    invoke-direct {p0}, Lorg/anddev/andengine/entity/Entity;->allocateUpdateHandlers()V

    .line 595
    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mUpdateHandlers:Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/handler/UpdateHandlerList;->add(Ljava/lang/Object;)Z

    .line 596
    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 888
    iput-boolean v4, p0, Lorg/anddev/andengine/entity/Entity;->mVisible:Z

    .line 889
    iput-boolean v2, p0, Lorg/anddev/andengine/entity/Entity;->mIgnoreUpdate:Z

    .line 890
    iput-boolean v4, p0, Lorg/anddev/andengine/entity/Entity;->mChildrenVisible:Z

    .line 891
    iput-boolean v2, p0, Lorg/anddev/andengine/entity/Entity;->mChildrenIgnoreUpdate:Z

    .line 893
    iget v2, p0, Lorg/anddev/andengine/entity/Entity;->mInitialX:F

    iput v2, p0, Lorg/anddev/andengine/entity/Entity;->mX:F

    .line 894
    iget v2, p0, Lorg/anddev/andengine/entity/Entity;->mInitialY:F

    iput v2, p0, Lorg/anddev/andengine/entity/Entity;->mY:F

    .line 895
    const/4 v2, 0x0

    iput v2, p0, Lorg/anddev/andengine/entity/Entity;->mRotation:F

    .line 896
    iput v3, p0, Lorg/anddev/andengine/entity/Entity;->mScaleX:F

    .line 897
    iput v3, p0, Lorg/anddev/andengine/entity/Entity;->mScaleY:F

    .line 899
    iput v3, p0, Lorg/anddev/andengine/entity/Entity;->mRed:F

    .line 900
    iput v3, p0, Lorg/anddev/andengine/entity/Entity;->mGreen:F

    .line 901
    iput v3, p0, Lorg/anddev/andengine/entity/Entity;->mBlue:F

    .line 902
    iput v3, p0, Lorg/anddev/andengine/entity/Entity;->mAlpha:F

    .line 904
    iget-object v2, p0, Lorg/anddev/andengine/entity/Entity;->mEntityModifiers:Lorg/anddev/andengine/entity/modifier/EntityModifierList;

    if-eqz v2, :cond_0

    .line 905
    iget-object v2, p0, Lorg/anddev/andengine/entity/Entity;->mEntityModifiers:Lorg/anddev/andengine/entity/modifier/EntityModifierList;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/modifier/EntityModifierList;->reset()V

    .line 908
    :cond_0
    iget-object v2, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-eqz v2, :cond_1

    .line 909
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    .line 910
    .local v0, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/entity/IEntity;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_2

    .line 914
    .end local v0    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/entity/IEntity;>;"
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 911
    .restart local v0    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/entity/IEntity;>;"
    .restart local v1    # "i":I
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/anddev/andengine/entity/IEntity;

    invoke-interface {v2}, Lorg/anddev/andengine/entity/IEntity;->reset()V

    .line 910
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "pAlpha"    # F

    .prologue
    .line 379
    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mAlpha:F

    .line 380
    return-void
.end method

.method public setChildIndex(Lorg/anddev/andengine/entity/IEntity;I)Z
    .locals 3
    .param p1, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;
    .param p2, "pIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 434
    iget-object v2, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lorg/anddev/andengine/entity/IEntity;->getParent()Lorg/anddev/andengine/entity/IEntity;

    move-result-object v2

    if-eq v2, p0, :cond_1

    .line 442
    :cond_0
    :goto_0
    return v1

    .line 438
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v2, p1}, Lorg/anddev/andengine/util/SmartList;->remove(Ljava/lang/Object;)Z

    .line 439
    iget-object v2, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v2, p2, p1}, Lorg/anddev/andengine/util/SmartList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    const/4 v1, 0x1

    goto :goto_0

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0
.end method

.method public setChildrenIgnoreUpdate(Z)V
    .locals 0
    .param p1, "pChildrenIgnoreUpdate"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Lorg/anddev/andengine/entity/Entity;->mChildrenIgnoreUpdate:Z

    .line 160
    return-void
.end method

.method public setChildrenVisible(Z)V
    .locals 0
    .param p1, "pChildrenVisible"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lorg/anddev/andengine/entity/Entity;->mChildrenVisible:Z

    .line 140
    return-void
.end method

.method public setColor(FFF)V
    .locals 0
    .param p1, "pRed"    # F
    .param p2, "pGreen"    # F
    .param p3, "pBlue"    # F

    .prologue
    .line 389
    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mRed:F

    .line 390
    iput p2, p0, Lorg/anddev/andengine/entity/Entity;->mGreen:F

    .line 391
    iput p3, p0, Lorg/anddev/andengine/entity/Entity;->mBlue:F

    .line 392
    return-void
.end method

.method public setColor(FFFF)V
    .locals 0
    .param p1, "pRed"    # F
    .param p2, "pGreen"    # F
    .param p3, "pBlue"    # F
    .param p4, "pAlpha"    # F

    .prologue
    .line 402
    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mRed:F

    .line 403
    iput p2, p0, Lorg/anddev/andengine/entity/Entity;->mGreen:F

    .line 404
    iput p3, p0, Lorg/anddev/andengine/entity/Entity;->mBlue:F

    .line 405
    iput p4, p0, Lorg/anddev/andengine/entity/Entity;->mAlpha:F

    .line 406
    return-void
.end method

.method public setIgnoreUpdate(Z)V
    .locals 0
    .param p1, "pIgnoreUpdate"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lorg/anddev/andengine/entity/Entity;->mIgnoreUpdate:Z

    .line 150
    return-void
.end method

.method public setInitialPosition()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 222
    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mInitialX:F

    iput v0, p0, Lorg/anddev/andengine/entity/Entity;->mX:F

    .line 223
    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mInitialY:F

    iput v0, p0, Lorg/anddev/andengine/entity/Entity;->mY:F

    .line 224
    iput-boolean v1, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 225
    iput-boolean v1, p0, Lorg/anddev/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 226
    return-void
.end method

.method public setParent(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 0
    .param p1, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 174
    iput-object p1, p0, Lorg/anddev/andengine/entity/Entity;->mParent:Lorg/anddev/andengine/entity/IEntity;

    .line 175
    return-void
.end method

.method public setPosition(FF)V
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    const/4 v0, 0x1

    .line 214
    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mX:F

    .line 215
    iput p2, p0, Lorg/anddev/andengine/entity/Entity;->mY:F

    .line 216
    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 217
    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 218
    return-void
.end method

.method public setPosition(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 2
    .param p1, "pOtherEntity"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 209
    invoke-interface {p1}, Lorg/anddev/andengine/entity/IEntity;->getX()F

    move-result v0

    invoke-interface {p1}, Lorg/anddev/andengine/entity/IEntity;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/anddev/andengine/entity/Entity;->setPosition(FF)V

    .line 210
    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .param p1, "pRotation"    # F

    .prologue
    const/4 v0, 0x1

    .line 240
    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mRotation:F

    .line 241
    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 242
    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 243
    return-void
.end method

.method public setRotationCenter(FF)V
    .locals 1
    .param p1, "pRotationCenterX"    # F
    .param p2, "pRotationCenterY"    # F

    .prologue
    const/4 v0, 0x1

    .line 271
    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mRotationCenterX:F

    .line 272
    iput p2, p0, Lorg/anddev/andengine/entity/Entity;->mRotationCenterY:F

    .line 273
    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 274
    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 275
    return-void
.end method

.method public setRotationCenterX(F)V
    .locals 1
    .param p1, "pRotationCenterX"    # F

    .prologue
    const/4 v0, 0x1

    .line 257
    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mRotationCenterX:F

    .line 258
    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 259
    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 260
    return-void
.end method

.method public setRotationCenterY(F)V
    .locals 1
    .param p1, "pRotationCenterY"    # F

    .prologue
    const/4 v0, 0x1

    .line 264
    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mRotationCenterY:F

    .line 265
    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 266
    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 267
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .param p1, "pScale"    # F

    .prologue
    const/4 v0, 0x1

    .line 308
    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mScaleX:F

    .line 309
    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mScaleY:F

    .line 310
    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 311
    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 312
    return-void
.end method

.method public setScale(FF)V
    .locals 1
    .param p1, "pScaleX"    # F
    .param p2, "pScaleY"    # F

    .prologue
    const/4 v0, 0x1

    .line 316
    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mScaleX:F

    .line 317
    iput p2, p0, Lorg/anddev/andengine/entity/Entity;->mScaleY:F

    .line 318
    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 319
    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 320
    return-void
.end method

.method public setScaleCenter(FF)V
    .locals 1
    .param p1, "pScaleCenterX"    # F
    .param p2, "pScaleCenterY"    # F

    .prologue
    const/4 v0, 0x1

    .line 348
    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mScaleCenterX:F

    .line 349
    iput p2, p0, Lorg/anddev/andengine/entity/Entity;->mScaleCenterY:F

    .line 350
    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 351
    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 352
    return-void
.end method

.method public setScaleCenterX(F)V
    .locals 1
    .param p1, "pScaleCenterX"    # F

    .prologue
    const/4 v0, 0x1

    .line 334
    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mScaleCenterX:F

    .line 335
    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 336
    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 337
    return-void
.end method

.method public setScaleCenterY(F)V
    .locals 1
    .param p1, "pScaleCenterY"    # F

    .prologue
    const/4 v0, 0x1

    .line 341
    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mScaleCenterY:F

    .line 342
    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 343
    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 344
    return-void
.end method

.method public setScaleX(F)V
    .locals 1
    .param p1, "pScaleX"    # F

    .prologue
    const/4 v0, 0x1

    .line 294
    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mScaleX:F

    .line 295
    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 296
    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 297
    return-void
.end method

.method public setScaleY(F)V
    .locals 1
    .param p1, "pScaleY"    # F

    .prologue
    const/4 v0, 0x1

    .line 301
    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mScaleY:F

    .line 302
    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 303
    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 304
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "pUserData"    # Ljava/lang/Object;

    .prologue
    .line 869
    iput-object p1, p0, Lorg/anddev/andengine/entity/Entity;->mUserData:Ljava/lang/Object;

    .line 870
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "pVisible"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lorg/anddev/andengine/entity/Entity;->mVisible:Z

    .line 130
    return-void
.end method

.method public setZIndex(I)V
    .locals 0
    .param p1, "pZIndex"    # I

    .prologue
    .line 184
    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mZIndex:I

    .line 185
    return-void
.end method

.method public sortChildren()V
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-nez v0, :cond_0

    .line 540
    :goto_0
    return-void

    .line 539
    :cond_0
    invoke-static {}, Lorg/anddev/andengine/entity/ZIndexSorter;->getInstance()Lorg/anddev/andengine/entity/ZIndexSorter;

    move-result-object v0

    iget-object v1, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/ZIndexSorter;->sort(Ljava/util/List;)V

    goto :goto_0
.end method

.method public sortChildren(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lorg/anddev/andengine/entity/IEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 544
    .local p1, "pEntityComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/anddev/andengine/entity/IEntity;>;"
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-nez v0, :cond_0

    .line 548
    :goto_0
    return-void

    .line 547
    :cond_0
    invoke-static {}, Lorg/anddev/andengine/entity/ZIndexSorter;->getInstance()Lorg/anddev/andengine/entity/ZIndexSorter;

    move-result-object v0

    iget-object v1, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v0, v1, p1}, Lorg/anddev/andengine/entity/ZIndexSorter;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public swapChildren(II)Z
    .locals 2
    .param p1, "pIndexA"    # I
    .param p2, "pIndexB"    # I

    .prologue
    .line 527
    :try_start_0
    iget-object v1, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    invoke-static {v1, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    const/4 v1, 0x1

    .line 530
    :goto_0
    return v1

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public swapChildren(Lorg/anddev/andengine/entity/IEntity;Lorg/anddev/andengine/entity/IEntity;)Z
    .locals 2
    .param p1, "pEntityA"    # Lorg/anddev/andengine/entity/IEntity;
    .param p2, "pEntityB"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 521
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/Entity;->getChildIndex(Lorg/anddev/andengine/entity/IEntity;)I

    move-result v0

    invoke-virtual {p0, p2}, Lorg/anddev/andengine/entity/Entity;->getChildIndex(Lorg/anddev/andengine/entity/IEntity;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/anddev/andengine/entity/Entity;->swapChildren(II)Z

    move-result v0

    return v0
.end method

.method public unregisterEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)Z
    .locals 1
    .param p1, "pEntityModifier"    # Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .prologue
    .line 632
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mEntityModifiers:Lorg/anddev/andengine/entity/modifier/EntityModifierList;

    if-nez v0, :cond_0

    .line 633
    const/4 v0, 0x0

    .line 635
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mEntityModifiers:Lorg/anddev/andengine/entity/modifier/EntityModifierList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/modifier/EntityModifierList;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public unregisterEntityModifiers(Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierMatcher;)Z
    .locals 1
    .param p1, "pEntityModifierMatcher"    # Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierMatcher;

    .prologue
    .line 640
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mEntityModifiers:Lorg/anddev/andengine/entity/modifier/EntityModifierList;

    if-nez v0, :cond_0

    .line 641
    const/4 v0, 0x0

    .line 643
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mEntityModifiers:Lorg/anddev/andengine/entity/modifier/EntityModifierList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/modifier/EntityModifierList;->removeAll(Lorg/anddev/andengine/util/IMatcher;)Z

    move-result v0

    goto :goto_0
.end method

.method public unregisterUpdateHandler(Lorg/anddev/andengine/engine/handler/IUpdateHandler;)Z
    .locals 1
    .param p1, "pUpdateHandler"    # Lorg/anddev/andengine/engine/handler/IUpdateHandler;

    .prologue
    .line 600
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mUpdateHandlers:Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

    if-nez v0, :cond_0

    .line 601
    const/4 v0, 0x0

    .line 603
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mUpdateHandlers:Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/handler/UpdateHandlerList;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public unregisterUpdateHandlers(Lorg/anddev/andengine/engine/handler/IUpdateHandler$IUpdateHandlerMatcher;)Z
    .locals 1
    .param p1, "pUpdateHandlerMatcher"    # Lorg/anddev/andengine/engine/handler/IUpdateHandler$IUpdateHandlerMatcher;

    .prologue
    .line 608
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mUpdateHandlers:Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

    if-nez v0, :cond_0

    .line 609
    const/4 v0, 0x0

    .line 611
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mUpdateHandlers:Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/handler/UpdateHandlerList;->removeAll(Lorg/anddev/andengine/util/IMatcher;)Z

    move-result v0

    goto :goto_0
.end method
