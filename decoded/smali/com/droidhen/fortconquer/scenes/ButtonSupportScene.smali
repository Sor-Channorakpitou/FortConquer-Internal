.class public abstract Lcom/droidhen/fortconquer/scenes/ButtonSupportScene;
.super Lcom/droidhen/fortconquer/scenes/SmartScene;
.source "ButtonSupportScene.java"

# interfaces
.implements Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;


# direct methods
.method protected constructor <init>(Lcom/droidhen/fortconquer/GameActivity;)V
    .locals 1
    .param p1, "gameActivity"    # Lcom/droidhen/fortconquer/GameActivity;

    .prologue
    const/4 v0, 0x1

    .line 12
    invoke-direct {p0, p1}, Lcom/droidhen/fortconquer/scenes/SmartScene;-><init>(Lcom/droidhen/fortconquer/GameActivity;)V

    .line 13
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/ButtonSupportScene;->setOnAreaTouchTraversalFrontToBack()V

    .line 14
    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ButtonSupportScene;->setTouchAreaBindingEnabled(Z)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/ButtonSupportScene;->setOnSceneTouchListenerBindingEnabled(Z)V

    .line 16
    return-void
.end method


# virtual methods
.method public onSceneTouchEvent(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 1
    .param p1, "pScene"    # Lorg/anddev/andengine/entity/scene/Scene;
    .param p2, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method protected registerHandlers()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0, p0}, Lcom/droidhen/fortconquer/scenes/ButtonSupportScene;->setOnSceneTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;)V

    .line 26
    return-void
.end method
