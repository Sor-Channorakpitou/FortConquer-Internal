.class public Lorg/anddev/andengine/entity/scene/menu/MenuScene;
.super Lorg/anddev/andengine/entity/scene/CameraScene;
.source "MenuScene.java"

# interfaces
.implements Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;
.implements Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;
    }
.end annotation


# instance fields
.field private mMenuAnimator:Lorg/anddev/andengine/entity/scene/menu/animator/IMenuAnimator;

.field private final mMenuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOnMenuItemClickListener:Lorg/anddev/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;

.field private mSelectedMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, v0, v0}, Lorg/anddev/andengine/entity/scene/menu/MenuScene;-><init>(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 1
    .param p1, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/anddev/andengine/entity/scene/menu/MenuScene;-><init>(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;)V
    .locals 1
    .param p1, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;
    .param p2, "pOnMenuItemClickListener"    # Lorg/anddev/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/anddev/andengine/entity/scene/CameraScene;-><init>(Lorg/anddev/andengine/engine/camera/Camera;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mMenuItems:Ljava/util/ArrayList;

    .line 36
    sget-object v0, Lorg/anddev/andengine/entity/scene/menu/animator/IMenuAnimator;->DEFAULT:Lorg/anddev/andengine/entity/scene/menu/animator/IMenuAnimator;

    iput-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mMenuAnimator:Lorg/anddev/andengine/entity/scene/menu/animator/IMenuAnimator;

    .line 58
    iput-object p2, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mOnMenuItemClickListener:Lorg/anddev/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;

    .line 59
    invoke-virtual {p0, p0}, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->setOnSceneTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;)V

    .line 60
    invoke-virtual {p0, p0}, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->setOnAreaTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;)V
    .locals 1
    .param p1, "pOnMenuItemClickListener"    # Lorg/anddev/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/anddev/andengine/entity/scene/menu/MenuScene;-><init>(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;)V

    .line 50
    return-void
.end method


# virtual methods
.method public addMenuItem(Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;)V
    .locals 1
    .param p1, "pMenuItem"    # Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    .prologue
    .line 80
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    .line 82
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    .line 83
    return-void
.end method

.method public back()V
    .locals 0

    .prologue
    .line 155
    invoke-super {p0}, Lorg/anddev/andengine/entity/scene/CameraScene;->back()V

    .line 157
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->reset()V

    .line 158
    return-void
.end method

.method public buildAnimations()V
    .locals 4

    .prologue
    .line 181
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->prepareAnimations()V

    .line 183
    iget-object v2, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v2}, Lorg/anddev/andengine/engine/camera/Camera;->getWidthRaw()F

    move-result v1

    .line 184
    .local v1, "cameraWidthRaw":F
    iget-object v2, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v2}, Lorg/anddev/andengine/engine/camera/Camera;->getHeightRaw()F

    move-result v0

    .line 185
    .local v0, "cameraHeightRaw":F
    iget-object v2, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mMenuAnimator:Lorg/anddev/andengine/entity/scene/menu/animator/IMenuAnimator;

    iget-object v3, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mMenuItems:Ljava/util/ArrayList;

    invoke-interface {v2, v3, v1, v0}, Lorg/anddev/andengine/entity/scene/menu/animator/IMenuAnimator;->buildAnimations(Ljava/util/ArrayList;FF)V

    .line 186
    return-void
.end method

.method public clearChildScene()V
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->getChildScene()Lorg/anddev/andengine/entity/scene/menu/MenuScene;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->getChildScene()Lorg/anddev/andengine/entity/scene/menu/MenuScene;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->reset()V

    .line 103
    invoke-super {p0}, Lorg/anddev/andengine/entity/scene/CameraScene;->clearChildScene()V

    .line 105
    :cond_0
    return-void
.end method

.method public closeMenuScene()V
    .locals 0

    .prologue
    .line 177
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->back()V

    .line 178
    return-void
.end method

.method public bridge synthetic getChildScene()Lorg/anddev/andengine/entity/scene/Scene;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->getChildScene()Lorg/anddev/andengine/entity/scene/menu/MenuScene;

    move-result-object v0

    return-object v0
.end method

.method public getChildScene()Lorg/anddev/andengine/entity/scene/menu/MenuScene;
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lorg/anddev/andengine/entity/scene/CameraScene;->getChildScene()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;

    return-object v0
.end method

.method public getMenuItemCount()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getOnMenuItemClickListener()Lorg/anddev/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mOnMenuItemClickListener:Lorg/anddev/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;

    return-object v0
.end method

.method public onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;FF)Z
    .locals 4
    .param p1, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;
    .param p2, "pTouchArea"    # Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;
    .param p3, "pTouchAreaLocalX"    # F
    .param p4, "pTouchAreaLocalY"    # F

    .prologue
    const/4 v3, 0x0

    .line 117
    move-object v1, p2

    check-cast v1, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    .line 119
    .local v1, "menuItem":Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 141
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 122
    :pswitch_0
    iget-object v2, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mSelectedMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mSelectedMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    if-eq v2, v1, :cond_1

    .line 123
    iget-object v2, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mSelectedMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->onUnselected()V

    .line 125
    :cond_1
    iput-object v1, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mSelectedMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    .line 126
    iget-object v2, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mSelectedMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->onSelected()V

    goto :goto_0

    .line 129
    :pswitch_1
    iget-object v2, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mOnMenuItemClickListener:Lorg/anddev/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;

    if-eqz v2, :cond_0

    .line 130
    iget-object v2, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mOnMenuItemClickListener:Lorg/anddev/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;

    invoke-interface {v2, p0, v1, p3, p4}, Lorg/anddev/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;->onMenuItemClicked(Lorg/anddev/andengine/entity/scene/menu/MenuScene;Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;FF)Z

    move-result v0

    .line 131
    .local v0, "handled":Z
    invoke-interface {v1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->onUnselected()V

    .line 132
    iput-object v3, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mSelectedMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    goto :goto_1

    .line 137
    .end local v0    # "handled":Z
    :pswitch_2
    invoke-interface {v1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->onUnselected()V

    .line 138
    iput-object v3, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mSelectedMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onSceneTouchEvent(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 1
    .param p1, "pScene"    # Lorg/anddev/andengine/entity/scene/Scene;
    .param p2, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    .line 146
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mSelectedMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mSelectedMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->onUnselected()V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mSelectedMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    .line 150
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public prepareAnimations()V
    .locals 4

    .prologue
    .line 189
    iget-object v2, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v2}, Lorg/anddev/andengine/engine/camera/Camera;->getWidthRaw()F

    move-result v1

    .line 190
    .local v1, "cameraWidthRaw":F
    iget-object v2, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v2}, Lorg/anddev/andengine/engine/camera/Camera;->getHeightRaw()F

    move-result v0

    .line 191
    .local v0, "cameraHeightRaw":F
    iget-object v2, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mMenuAnimator:Lorg/anddev/andengine/entity/scene/menu/animator/IMenuAnimator;

    iget-object v3, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mMenuItems:Ljava/util/ArrayList;

    invoke-interface {v2, v3, v1, v0}, Lorg/anddev/andengine/entity/scene/menu/animator/IMenuAnimator;->prepareAnimations(Ljava/util/ArrayList;FF)V

    .line 192
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 162
    invoke-super {p0}, Lorg/anddev/andengine/entity/scene/CameraScene;->reset()V

    .line 164
    iget-object v1, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mMenuItems:Ljava/util/ArrayList;

    .line 165
    .local v1, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->prepareAnimations()V

    .line 170
    return-void

    .line 166
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->reset()V

    .line 165
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public setChildScene(Lorg/anddev/andengine/entity/scene/Scene;ZZZ)V
    .locals 2
    .param p1, "pChildScene"    # Lorg/anddev/andengine/entity/scene/Scene;
    .param p2, "pModalDraw"    # Z
    .param p3, "pModalUpdate"    # Z
    .param p4, "pModalTouch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 92
    instance-of v0, p1, Lorg/anddev/andengine/entity/scene/menu/MenuScene;

    if-eqz v0, :cond_0

    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/entity/scene/CameraScene;->setChildScene(Lorg/anddev/andengine/entity/scene/Scene;ZZZ)V

    .line 97
    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MenuScene accepts only MenuScenes as a ChildScene."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMenuAnimator(Lorg/anddev/andengine/entity/scene/menu/animator/IMenuAnimator;)V
    .locals 0
    .param p1, "pMenuAnimator"    # Lorg/anddev/andengine/entity/scene/menu/animator/IMenuAnimator;

    .prologue
    .line 108
    iput-object p1, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mMenuAnimator:Lorg/anddev/andengine/entity/scene/menu/animator/IMenuAnimator;

    .line 109
    return-void
.end method

.method public setOnMenuItemClickListener(Lorg/anddev/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;)V
    .locals 0
    .param p1, "pOnMenuItemClickListener"    # Lorg/anddev/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;

    .prologue
    .line 72
    iput-object p1, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mOnMenuItemClickListener:Lorg/anddev/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;

    .line 73
    return-void
.end method
