.class public abstract Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;
.super Ljava/lang/Object;
.source "BaseMenuItemDecorator.java"

# interfaces
.implements Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;


# instance fields
.field private final mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;)V
    .locals 0
    .param p1, "pMenuItem"    # Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    .line 41
    return-void
.end method


# virtual methods
.method public attachChild(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 1
    .param p1, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 400
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 401
    return-void
.end method

.method public attachChild(Lorg/anddev/andengine/entity/IEntity;I)Z
    .locals 1
    .param p1, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;
    .param p2, "pIndex"    # I

    .prologue
    .line 405
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->attachChild(Lorg/anddev/andengine/entity/IEntity;I)Z

    move-result v0

    return v0
.end method

.method public callOnChildren(Lorg/anddev/andengine/entity/IEntity$IEntityCallable;)V
    .locals 0
    .param p1, "pEntityCallable"    # Lorg/anddev/andengine/entity/IEntity$IEntityCallable;

    .prologue
    .line 485
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->callOnChildren(Lorg/anddev/andengine/entity/IEntity$IEntityCallable;)V

    .line 486
    return-void
.end method

.method public callOnChildren(Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;Lorg/anddev/andengine/entity/IEntity$IEntityCallable;)V
    .locals 1
    .param p1, "pEntityMatcher"    # Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;
    .param p2, "pEntityCallable"    # Lorg/anddev/andengine/entity/IEntity$IEntityCallable;

    .prologue
    .line 490
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->callOnChildren(Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;Lorg/anddev/andengine/entity/IEntity$IEntityCallable;)V

    .line 491
    return-void
.end method

.method public clearEntityModifiers()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->clearEntityModifiers()V

    .line 300
    return-void
.end method

.method public clearUpdateHandlers()V
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->clearUpdateHandlers()V

    .line 591
    return-void
.end method

.method public collidesWith(Lorg/anddev/andengine/entity/shape/IShape;)Z
    .locals 1
    .param p1, "pOtherShape"    # Lorg/anddev/andengine/entity/shape/IShape;

    .prologue
    .line 269
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->collidesWith(Lorg/anddev/andengine/entity/shape/IShape;)Z

    move-result v0

    return v0
.end method

.method public contains(FF)Z
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 345
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->contains(FF)Z

    move-result v0

    return v0
.end method

.method public convertLocalToSceneCoordinates(FF)[F
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 350
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->convertLocalToSceneCoordinates(FF)[F

    move-result-object v0

    return-object v0
.end method

.method public convertLocalToSceneCoordinates(FF[F)[F
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pReuse"    # [F

    .prologue
    .line 355
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2, p3}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->convertLocalToSceneCoordinates(FF[F)[F

    move-result-object v0

    return-object v0
.end method

.method public convertLocalToSceneCoordinates([F)[F
    .locals 1
    .param p1, "pCoordinates"    # [F

    .prologue
    .line 360
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->convertLocalToSceneCoordinates([F)[F

    move-result-object v0

    return-object v0
.end method

.method public convertLocalToSceneCoordinates([F[F)[F
    .locals 1
    .param p1, "pCoordinates"    # [F
    .param p2, "pReuse"    # [F

    .prologue
    .line 365
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->convertLocalToSceneCoordinates([F[F)[F

    move-result-object v0

    return-object v0
.end method

.method public convertSceneToLocalCoordinates(FF)[F
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 370
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->convertSceneToLocalCoordinates(FF)[F

    move-result-object v0

    return-object v0
.end method

.method public convertSceneToLocalCoordinates(FF[F)[F
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pReuse"    # [F

    .prologue
    .line 375
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2, p3}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->convertSceneToLocalCoordinates(FF[F)[F

    move-result-object v0

    return-object v0
.end method

.method public convertSceneToLocalCoordinates([F)[F
    .locals 1
    .param p1, "pCoordinates"    # [F

    .prologue
    .line 380
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->convertSceneToLocalCoordinates([F)[F

    move-result-object v0

    return-object v0
.end method

.method public convertSceneToLocalCoordinates([F[F)[F
    .locals 1
    .param p1, "pCoordinates"    # [F
    .param p2, "pReuse"    # [F

    .prologue
    .line 385
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->convertSceneToLocalCoordinates([F[F)[F

    move-result-object v0

    return-object v0
.end method

.method public detachChild(Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;)Lorg/anddev/andengine/entity/IEntity;
    .locals 1
    .param p1, "pEntityMatcher"    # Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;

    .prologue
    .line 470
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->detachChild(Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;)Lorg/anddev/andengine/entity/IEntity;

    move-result-object v0

    return-object v0
.end method

.method public detachChild(Lorg/anddev/andengine/entity/IEntity;)Z
    .locals 1
    .param p1, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 465
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->detachChild(Lorg/anddev/andengine/entity/IEntity;)Z

    move-result v0

    return v0
.end method

.method public detachChildren()V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->detachChildren()V

    .line 481
    return-void
.end method

.method public detachChildren(Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;)Z
    .locals 1
    .param p1, "pEntityMatcher"    # Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;

    .prologue
    .line 475
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->detachChildren(Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;)Z

    move-result v0

    return v0
.end method

.method public detachSelf()Z
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->detachSelf()Z

    move-result v0

    return v0
.end method

.method public findChild(Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;)Lorg/anddev/andengine/entity/IEntity;
    .locals 1
    .param p1, "pEntityMatcher"    # Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;

    .prologue
    .line 435
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->findChild(Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;)Lorg/anddev/andengine/entity/IEntity;

    move-result-object v0

    return-object v0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getAlpha()F

    move-result v0

    return v0
.end method

.method public getBaseHeight()F
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getBaseHeight()F

    move-result v0

    return v0
.end method

.method public getBaseWidth()F
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getBaseWidth()F

    move-result v0

    return v0
.end method

.method public getBlue()F
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getBlue()F

    move-result v0

    return v0
.end method

.method public getChild(I)Lorg/anddev/andengine/entity/IEntity;
    .locals 1
    .param p1, "pIndex"    # I

    .prologue
    .line 420
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getChild(I)Lorg/anddev/andengine/entity/IEntity;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildIndex(Lorg/anddev/andengine/entity/IEntity;)I
    .locals 1
    .param p1, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 425
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getChildIndex(Lorg/anddev/andengine/entity/IEntity;)I

    move-result v0

    return v0
.end method

.method public getFirstChild()Lorg/anddev/andengine/entity/IEntity;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getFirstChild()Lorg/anddev/andengine/entity/IEntity;

    move-result-object v0

    return-object v0
.end method

.method public getGreen()F
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getGreen()F

    move-result v0

    return v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getHeight()F

    move-result v0

    return v0
.end method

.method public getHeightScaled()F
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getHeightScaled()F

    move-result v0

    return v0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getID()I

    move-result v0

    return v0
.end method

.method public getInitialX()F
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getInitialX()F

    move-result v0

    return v0
.end method

.method public getInitialY()F
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getInitialY()F

    move-result v0

    return v0
.end method

.method public getLastChild()Lorg/anddev/andengine/entity/IEntity;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getLastChild()Lorg/anddev/andengine/entity/IEntity;

    move-result-object v0

    return-object v0
.end method

.method public getLocalToSceneTransformation()Lorg/anddev/andengine/util/Transformation;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getLocalToSceneTransformation()Lorg/anddev/andengine/util/Transformation;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/anddev/andengine/entity/IEntity;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getParent()Lorg/anddev/andengine/entity/IEntity;

    move-result-object v0

    return-object v0
.end method

.method public getRed()F
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getRed()F

    move-result v0

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getRotation()F

    move-result v0

    return v0
.end method

.method public getRotationCenterX()F
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getRotationCenterX()F

    move-result v0

    return v0
.end method

.method public getRotationCenterY()F
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getRotationCenterY()F

    move-result v0

    return v0
.end method

.method public getScaleCenterX()F
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getScaleCenterX()F

    move-result v0

    return v0
.end method

.method public getScaleCenterY()F
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getScaleCenterY()F

    move-result v0

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getScaleX()F

    move-result v0

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getScaleY()F

    move-result v0

    return v0
.end method

.method public getSceneCenterCoordinates()[F
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getSceneCenterCoordinates()[F

    move-result-object v0

    return-object v0
.end method

.method public getSceneToLocalTransformation()Lorg/anddev/andengine/util/Transformation;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getSceneToLocalTransformation()Lorg/anddev/andengine/util/Transformation;

    move-result-object v0

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getUserData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getWidth()F

    move-result v0

    return v0
.end method

.method public getWidthScaled()F
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getWidthScaled()F

    move-result v0

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getX()F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getY()F

    move-result v0

    return v0
.end method

.method public getZIndex()I
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getZIndex()I

    move-result v0

    return v0
.end method

.method public hasParent()Z
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->hasParent()Z

    move-result v0

    return v0
.end method

.method public isChildrenIgnoreUpdate()Z
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->isChildrenIgnoreUpdate()Z

    move-result v0

    return v0
.end method

.method public isChildrenVisible()Z
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->isChildrenVisible()Z

    move-result v0

    return v0
.end method

.method public isCullingEnabled()Z
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->isCullingEnabled()Z

    move-result v0

    return v0
.end method

.method public isIgnoreUpdate()Z
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->isIgnoreUpdate()Z

    move-result v0

    return v0
.end method

.method public isRotated()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->isRotated()Z

    move-result v0

    return v0
.end method

.method public isScaled()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->isScaled()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->isVisible()Z

    move-result v0

    return v0
.end method

.method public onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z
    .locals 1
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;
    .param p2, "pTouchAreaLocalX"    # F
    .param p3, "pTouchAreaLocalY"    # F

    .prologue
    .line 390
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2, p3}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onAttached()V
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->onAttached()V

    .line 571
    return-void
.end method

.method public onDetached()V
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->onDetached()V

    .line 576
    return-void
.end method

.method public onDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 1
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;

    .prologue
    .line 329
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->onDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    .line 330
    return-void
.end method

.method protected abstract onMenuItemReset(Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;)V
.end method

.method protected abstract onMenuItemSelected(Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;)V
.end method

.method protected abstract onMenuItemUnselected(Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;)V
.end method

.method public final onSelected()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->onSelected()V

    .line 63
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->onMenuItemSelected(Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;)V

    .line 64
    return-void
.end method

.method public final onUnselected()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->onUnselected()V

    .line 69
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->onMenuItemUnselected(Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;)V

    .line 70
    return-void
.end method

.method public onUpdate(F)V
    .locals 1
    .param p1, "pSecondsElapsed"    # F

    .prologue
    .line 334
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->onUpdate(F)V

    .line 335
    return-void
.end method

.method public registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V
    .locals 1
    .param p1, "pEntityModifier"    # Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .prologue
    .line 284
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 285
    return-void
.end method

.method public registerUpdateHandler(Lorg/anddev/andengine/engine/handler/IUpdateHandler;)V
    .locals 1
    .param p1, "pUpdateHandler"    # Lorg/anddev/andengine/engine/handler/IUpdateHandler;

    .prologue
    .line 580
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->registerUpdateHandler(Lorg/anddev/andengine/engine/handler/IUpdateHandler;)V

    .line 581
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->reset()V

    .line 340
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->onMenuItemReset(Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;)V

    .line 341
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "pAlpha"    # F

    .prologue
    .line 154
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setAlpha(F)V

    .line 155
    return-void
.end method

.method public setBlendFunction(II)V
    .locals 1
    .param p1, "pSourceBlendFunction"    # I
    .param p2, "pDestinationBlendFunction"    # I

    .prologue
    .line 309
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setBlendFunction(II)V

    .line 310
    return-void
.end method

.method public setChildIndex(Lorg/anddev/andengine/entity/IEntity;I)Z
    .locals 1
    .param p1, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;
    .param p2, "pIndex"    # I

    .prologue
    .line 430
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setChildIndex(Lorg/anddev/andengine/entity/IEntity;I)Z

    move-result v0

    return v0
.end method

.method public setChildrenIgnoreUpdate(Z)V
    .locals 1
    .param p1, "pChildrenIgnoreUpdate"    # Z

    .prologue
    .line 555
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setChildrenIgnoreUpdate(Z)V

    .line 556
    return-void
.end method

.method public setChildrenVisible(Z)V
    .locals 1
    .param p1, "pChildrenVisible"    # Z

    .prologue
    .line 535
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setChildrenVisible(Z)V

    .line 536
    return-void
.end method

.method public setColor(FFF)V
    .locals 1
    .param p1, "pRed"    # F
    .param p2, "pGreen"    # F
    .param p3, "pBlue"    # F

    .prologue
    .line 159
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2, p3}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setColor(FFF)V

    .line 160
    return-void
.end method

.method public setColor(FFFF)V
    .locals 1
    .param p1, "pRed"    # F
    .param p2, "pGreen"    # F
    .param p3, "pBlue"    # F
    .param p4, "pAlpha"    # F

    .prologue
    .line 164
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setColor(FFFF)V

    .line 165
    return-void
.end method

.method public setCullingEnabled(Z)V
    .locals 1
    .param p1, "pCullingEnabled"    # Z

    .prologue
    .line 314
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setCullingEnabled(Z)V

    .line 315
    return-void
.end method

.method public setIgnoreUpdate(Z)V
    .locals 1
    .param p1, "pIgnoreUpdate"    # Z

    .prologue
    .line 545
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setIgnoreUpdate(Z)V

    .line 546
    return-void
.end method

.method public setInitialPosition()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setInitialPosition()V

    .line 305
    return-void
.end method

.method public setParent(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 1
    .param p1, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 515
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setParent(Lorg/anddev/andengine/entity/IEntity;)V

    .line 516
    return-void
.end method

.method public setPosition(FF)V
    .locals 1
    .param p1, "pX"    # F
    .param p2, "pY"    # F

    .prologue
    .line 89
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setPosition(FF)V

    .line 90
    return-void
.end method

.method public setPosition(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 1
    .param p1, "pOtherEntity"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setPosition(Lorg/anddev/andengine/entity/IEntity;)V

    .line 85
    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .param p1, "pRotation"    # F

    .prologue
    .line 179
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setRotation(F)V

    .line 180
    return-void
.end method

.method public setRotationCenter(FF)V
    .locals 1
    .param p1, "pRotationCenterX"    # F
    .param p2, "pRotationCenterY"    # F

    .prologue
    .line 204
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setRotationCenter(FF)V

    .line 205
    return-void
.end method

.method public setRotationCenterX(F)V
    .locals 1
    .param p1, "pRotationCenterX"    # F

    .prologue
    .line 194
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setRotationCenterX(F)V

    .line 195
    return-void
.end method

.method public setRotationCenterY(F)V
    .locals 1
    .param p1, "pRotationCenterY"    # F

    .prologue
    .line 199
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setRotationCenterY(F)V

    .line 200
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .param p1, "pScale"    # F

    .prologue
    .line 224
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setScale(F)V

    .line 225
    return-void
.end method

.method public setScale(FF)V
    .locals 1
    .param p1, "pScaleX"    # F
    .param p2, "pScaleY"    # F

    .prologue
    .line 229
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setScale(FF)V

    .line 230
    return-void
.end method

.method public setScaleCenter(FF)V
    .locals 1
    .param p1, "pScaleCenterX"    # F
    .param p2, "pScaleCenterY"    # F

    .prologue
    .line 264
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setScaleCenter(FF)V

    .line 265
    return-void
.end method

.method public setScaleCenterX(F)V
    .locals 1
    .param p1, "pScaleCenterX"    # F

    .prologue
    .line 254
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setScaleCenterX(F)V

    .line 255
    return-void
.end method

.method public setScaleCenterY(F)V
    .locals 1
    .param p1, "pScaleCenterY"    # F

    .prologue
    .line 259
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setScaleCenterY(F)V

    .line 260
    return-void
.end method

.method public setScaleX(F)V
    .locals 1
    .param p1, "pScaleX"    # F

    .prologue
    .line 234
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setScaleX(F)V

    .line 235
    return-void
.end method

.method public setScaleY(F)V
    .locals 1
    .param p1, "pScaleY"    # F

    .prologue
    .line 239
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setScaleY(F)V

    .line 240
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 1
    .param p1, "pUserData"    # Ljava/lang/Object;

    .prologue
    .line 560
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setUserData(Ljava/lang/Object;)V

    .line 561
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "pVisible"    # Z

    .prologue
    .line 525
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setVisible(Z)V

    .line 526
    return-void
.end method

.method public setZIndex(I)V
    .locals 1
    .param p1, "pZIndex"    # I

    .prologue
    .line 324
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setZIndex(I)V

    .line 325
    return-void
.end method

.method public sortChildren()V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->sortChildren()V

    .line 451
    return-void
.end method

.method public sortChildren(Ljava/util/Comparator;)V
    .locals 1
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
    .line 455
    .local p1, "pEntityComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/anddev/andengine/entity/IEntity;>;"
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->sortChildren(Ljava/util/Comparator;)V

    .line 456
    return-void
.end method

.method public swapChildren(II)Z
    .locals 1
    .param p1, "pIndexA"    # I
    .param p2, "pIndexB"    # I

    .prologue
    .line 445
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->swapChildren(II)Z

    move-result v0

    return v0
.end method

.method public swapChildren(Lorg/anddev/andengine/entity/IEntity;Lorg/anddev/andengine/entity/IEntity;)Z
    .locals 1
    .param p1, "pEntityA"    # Lorg/anddev/andengine/entity/IEntity;
    .param p2, "pEntityB"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 440
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->swapChildren(Lorg/anddev/andengine/entity/IEntity;Lorg/anddev/andengine/entity/IEntity;)Z

    move-result v0

    return v0
.end method

.method public unregisterEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)Z
    .locals 1
    .param p1, "pEntityModifier"    # Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    .prologue
    .line 289
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->unregisterEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)Z

    move-result v0

    return v0
.end method

.method public unregisterEntityModifiers(Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierMatcher;)Z
    .locals 1
    .param p1, "pEntityModifierMatcher"    # Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierMatcher;

    .prologue
    .line 294
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->unregisterEntityModifiers(Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierMatcher;)Z

    move-result v0

    return v0
.end method

.method public unregisterUpdateHandler(Lorg/anddev/andengine/engine/handler/IUpdateHandler;)Z
    .locals 1
    .param p1, "pUpdateHandler"    # Lorg/anddev/andengine/engine/handler/IUpdateHandler;

    .prologue
    .line 585
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->unregisterUpdateHandler(Lorg/anddev/andengine/engine/handler/IUpdateHandler;)Z

    move-result v0

    return v0
.end method

.method public unregisterUpdateHandlers(Lorg/anddev/andengine/engine/handler/IUpdateHandler$IUpdateHandlerMatcher;)Z
    .locals 1
    .param p1, "pUpdateHandlerMatcher"    # Lorg/anddev/andengine/engine/handler/IUpdateHandler$IUpdateHandlerMatcher;

    .prologue
    .line 595
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->unregisterUpdateHandlers(Lorg/anddev/andengine/engine/handler/IUpdateHandler$IUpdateHandlerMatcher;)Z

    move-result v0

    return v0
.end method
