.class public abstract Lcom/droidhen/fortconquer/scenes/SmartScene;
.super Lorg/anddev/andengine/entity/scene/Scene;
.source "SmartScene.java"


# static fields
.field public static sCurrentTexturesAL:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private from:Lcom/droidhen/fortconquer/scenes/SmartScene;

.field public mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

.field protected final mLoadTrigger:Lcom/droidhen/andplugin/modifier/TriggerModifier;

.field public mTexturesAL:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;",
            ">;"
        }
    .end annotation
.end field

.field public mbInitialized:Z


# direct methods
.method protected constructor <init>(Lcom/droidhen/fortconquer/GameActivity;)V
    .locals 4
    .param p1, "gameActivity"    # Lcom/droidhen/fortconquer/GameActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/anddev/andengine/entity/scene/Scene;-><init>()V

    .line 26
    new-instance v0, Lcom/droidhen/andplugin/modifier/TriggerModifier;

    const/high16 v1, 0x41200000    # 10.0f

    new-instance v2, Lcom/droidhen/fortconquer/scenes/SmartScene$1;

    invoke-direct {v2, p0}, Lcom/droidhen/fortconquer/scenes/SmartScene$1;-><init>(Lcom/droidhen/fortconquer/scenes/SmartScene;)V

    .line 32
    new-instance v3, Lcom/droidhen/fortconquer/scenes/SmartScene$2;

    invoke-direct {v3, p0}, Lcom/droidhen/fortconquer/scenes/SmartScene$2;-><init>(Lcom/droidhen/fortconquer/scenes/SmartScene;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/droidhen/andplugin/modifier/TriggerModifier;-><init>(FLcom/droidhen/andplugin/modifier/TriggerCondition;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/SmartScene;->mLoadTrigger:Lcom/droidhen/andplugin/modifier/TriggerModifier;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/SmartScene;->from:Lcom/droidhen/fortconquer/scenes/SmartScene;

    .line 44
    iput-object p1, p0, Lcom/droidhen/fortconquer/scenes/SmartScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/droidhen/fortconquer/scenes/SmartScene;->mbInitialized:Z

    .line 46
    return-void
.end method

.method private swapInNewTexture(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "swapIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;>;"
    sget-object v1, Lcom/droidhen/fortconquer/scenes/SmartScene;->sCurrentTexturesAL:Ljava/util/ArrayList;

    if-ne v1, p1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 111
    :cond_0
    sget-object v1, Lcom/droidhen/fortconquer/scenes/SmartScene;->sCurrentTexturesAL:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/droidhen/fortconquer/scenes/SmartScene;->sCurrentTexturesAL:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 116
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 119
    sput-object p1, Lcom/droidhen/fortconquer/scenes/SmartScene;->sCurrentTexturesAL:Ljava/util/ArrayList;

    goto :goto_0

    .line 113
    :cond_2
    sget-object v1, Lcom/droidhen/fortconquer/scenes/SmartScene;->sCurrentTexturesAL:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 114
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/SmartScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v1

    invoke-virtual {v1}, Lorg/anddev/andengine/engine/Engine;->getTextureManager()Lorg/anddev/andengine/opengl/texture/TextureManager;

    move-result-object v2

    sget-object v1, Lcom/droidhen/fortconquer/scenes/SmartScene;->sCurrentTexturesAL:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/anddev/andengine/opengl/texture/ITexture;

    invoke-virtual {v2, v1}, Lorg/anddev/andengine/opengl/texture/TextureManager;->unloadTexture(Lorg/anddev/andengine/opengl/texture/ITexture;)Z

    .line 112
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 117
    :cond_4
    iget-object v1, p0, Lcom/droidhen/fortconquer/scenes/SmartScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v1}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v1

    invoke-virtual {v1}, Lorg/anddev/andengine/engine/Engine;->getTextureManager()Lorg/anddev/andengine/opengl/texture/TextureManager;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/anddev/andengine/opengl/texture/ITexture;

    invoke-virtual {v2, v1}, Lorg/anddev/andengine/opengl/texture/TextureManager;->loadTexture(Lorg/anddev/andengine/opengl/texture/ITexture;)Z

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public abstract IsTexturesLoaded()Z
.end method

.method public afterSwitchIn(Lcom/droidhen/fortconquer/scenes/SmartScene;)V
    .locals 0
    .param p1, "from"    # Lcom/droidhen/fortconquer/scenes/SmartScene;

    .prologue
    .line 150
    return-void
.end method

.method public declared-synchronized attachChild(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 1
    .param p1, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lorg/anddev/andengine/entity/IEntity;->detachSelf()Z

    .line 126
    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/scene/Scene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized attachChild(Lorg/anddev/andengine/entity/IEntity;I)Z
    .locals 1
    .param p1, "pEntity"    # Lorg/anddev/andengine/entity/IEntity;
    .param p2, "pIndex"    # I

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lorg/anddev/andengine/entity/IEntity;->detachSelf()Z

    .line 133
    invoke-super {p0, p1, p2}, Lorg/anddev/andengine/entity/scene/Scene;->attachChild(Lorg/anddev/andengine/entity/IEntity;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract attachEverything()V
.end method

.method public final back()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/SmartScene;->from:Lcom/droidhen/fortconquer/scenes/SmartScene;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/SmartScene;->from:Lcom/droidhen/fortconquer/scenes/SmartScene;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/scenes/SmartScene;->setupScene()V

    .line 57
    :cond_0
    return-void
.end method

.method protected abstract createBGAndSprites()V
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "rscId"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/SmartScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0, p1}, Lcom/droidhen/fortconquer/GameActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "rscId"    # I
    .param p2, "format"    # [Ljava/lang/Object;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/SmartScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0, p1, p2}, Lcom/droidhen/fortconquer/GameActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/scenes/SmartScene;->mbInitialized:Z

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/SmartScene;->initTextures()V

    .line 69
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/SmartScene;->initTextureRegions()V

    .line 70
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/SmartScene;->createBGAndSprites()V

    .line 71
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/SmartScene;->attachEverything()V

    .line 72
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/SmartScene;->registerTouchAreas()V

    .line 73
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/SmartScene;->registerHandlers()V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/droidhen/fortconquer/scenes/SmartScene;->mbInitialized:Z

    .line 76
    :cond_0
    return-void
.end method

.method protected abstract initTextureRegions()V
.end method

.method protected abstract initTextures()V
.end method

.method public loadTexture()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/SmartScene;->mTexturesAL:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/droidhen/fortconquer/scenes/SmartScene;->swapInNewTexture(Ljava/util/ArrayList;)V

    .line 106
    return-void
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;)Z
.end method

.method public onLoadDone()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public onSwitchIn(Lcom/droidhen/fortconquer/scenes/SmartScene;)Z
    .locals 1
    .param p1, "from"    # Lcom/droidhen/fortconquer/scenes/SmartScene;

    .prologue
    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public onSwitchOut(Lcom/droidhen/fortconquer/scenes/SmartScene;)V
    .locals 0
    .param p1, "to"    # Lcom/droidhen/fortconquer/scenes/SmartScene;

    .prologue
    .line 138
    return-void
.end method

.method protected abstract registerHandlers()V
.end method

.method protected abstract registerTouchAreas()V
.end method

.method public setupScene()V
    .locals 0

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/SmartScene;->swithToScene()V

    .line 63
    return-void
.end method

.method public final swithToScene()V
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/droidhen/fortconquer/scenes/SmartScene;->init()V

    .line 81
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sCurrentScene:Lcom/droidhen/fortconquer/scenes/SmartScene;

    iput-object v0, p0, Lcom/droidhen/fortconquer/scenes/SmartScene;->from:Lcom/droidhen/fortconquer/scenes/SmartScene;

    .line 82
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/SmartScene;->from:Lcom/droidhen/fortconquer/scenes/SmartScene;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/SmartScene;->onSwitchIn(Lcom/droidhen/fortconquer/scenes/SmartScene;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/SmartScene;->mTexturesAL:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/droidhen/fortconquer/scenes/SmartScene;->swapInNewTexture(Ljava/util/ArrayList;)V

    .line 84
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/SmartScene;->mGameActivity:Lcom/droidhen/fortconquer/GameActivity;

    invoke-virtual {v0}, Lcom/droidhen/fortconquer/GameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/anddev/andengine/engine/Engine;->setScene(Lorg/anddev/andengine/entity/scene/Scene;)V

    .line 85
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/SmartScene;->from:Lcom/droidhen/fortconquer/scenes/SmartScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/SmartScene;->from:Lcom/droidhen/fortconquer/scenes/SmartScene;

    if-eq v0, p0, :cond_0

    .line 86
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sCurrentScene:Lcom/droidhen/fortconquer/scenes/SmartScene;

    invoke-virtual {v0, p0}, Lcom/droidhen/fortconquer/scenes/SmartScene;->onSwitchOut(Lcom/droidhen/fortconquer/scenes/SmartScene;)V

    .line 88
    :cond_0
    sput-object p0, Lcom/droidhen/fortconquer/GameActivity;->sCurrentScene:Lcom/droidhen/fortconquer/scenes/SmartScene;

    .line 89
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/SmartScene;->from:Lcom/droidhen/fortconquer/scenes/SmartScene;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/SmartScene;->afterSwitchIn(Lcom/droidhen/fortconquer/scenes/SmartScene;)V

    .line 90
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/SmartScene;->mLoadTrigger:Lcom/droidhen/andplugin/modifier/TriggerModifier;

    invoke-virtual {v0}, Lcom/droidhen/andplugin/modifier/TriggerModifier;->reset()V

    .line 91
    iget-object v0, p0, Lcom/droidhen/fortconquer/scenes/SmartScene;->mLoadTrigger:Lcom/droidhen/andplugin/modifier/TriggerModifier;

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/scenes/SmartScene;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    .line 94
    :cond_1
    sget-object v0, Lcom/droidhen/fortconquer/GameActivity;->sInstance:Lcom/droidhen/fortconquer/GameActivity;

    new-instance v1, Lcom/droidhen/fortconquer/scenes/SmartScene$3;

    invoke-direct {v1, p0}, Lcom/droidhen/fortconquer/scenes/SmartScene$3;-><init>(Lcom/droidhen/fortconquer/scenes/SmartScene;)V

    invoke-virtual {v0, v1}, Lcom/droidhen/fortconquer/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 102
    return-void
.end method
