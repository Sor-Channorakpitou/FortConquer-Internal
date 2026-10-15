.class public Lorg/anddev/andengine/engine/options/EngineOptions;
.super Ljava/lang/Object;
.source "EngineOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;
    }
.end annotation


# instance fields
.field private final mCamera:Lorg/anddev/andengine/engine/camera/Camera;

.field private final mFullscreen:Z

.field private mNeedsMusic:Z

.field private mNeedsSound:Z

.field private final mRenderOptions:Lorg/anddev/andengine/engine/options/RenderOptions;

.field private final mResolutionPolicy:Lorg/anddev/andengine/engine/options/resolutionpolicy/IResolutionPolicy;

.field private final mScreenOrientation:Lorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;

.field private final mTouchOptions:Lorg/anddev/andengine/engine/options/TouchOptions;

.field private mUpdateThreadPriority:I

.field private mWakeLockOptions:Lorg/anddev/andengine/engine/options/WakeLockOptions;


# direct methods
.method public constructor <init>(ZLorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;Lorg/anddev/andengine/engine/options/resolutionpolicy/IResolutionPolicy;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 1
    .param p1, "pFullscreen"    # Z
    .param p2, "pScreenOrientation"    # Lorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;
    .param p3, "pResolutionPolicy"    # Lorg/anddev/andengine/engine/options/resolutionpolicy/IResolutionPolicy;
    .param p4, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lorg/anddev/andengine/engine/options/TouchOptions;

    invoke-direct {v0}, Lorg/anddev/andengine/engine/options/TouchOptions;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/engine/options/EngineOptions;->mTouchOptions:Lorg/anddev/andengine/engine/options/TouchOptions;

    .line 28
    new-instance v0, Lorg/anddev/andengine/engine/options/RenderOptions;

    invoke-direct {v0}, Lorg/anddev/andengine/engine/options/RenderOptions;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/engine/options/EngineOptions;->mRenderOptions:Lorg/anddev/andengine/engine/options/RenderOptions;

    .line 32
    sget-object v0, Lorg/anddev/andengine/engine/options/WakeLockOptions;->SCREEN_BRIGHT:Lorg/anddev/andengine/engine/options/WakeLockOptions;

    iput-object v0, p0, Lorg/anddev/andengine/engine/options/EngineOptions;->mWakeLockOptions:Lorg/anddev/andengine/engine/options/WakeLockOptions;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lorg/anddev/andengine/engine/options/EngineOptions;->mUpdateThreadPriority:I

    .line 40
    iput-boolean p1, p0, Lorg/anddev/andengine/engine/options/EngineOptions;->mFullscreen:Z

    .line 41
    iput-object p2, p0, Lorg/anddev/andengine/engine/options/EngineOptions;->mScreenOrientation:Lorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;

    .line 42
    iput-object p3, p0, Lorg/anddev/andengine/engine/options/EngineOptions;->mResolutionPolicy:Lorg/anddev/andengine/engine/options/resolutionpolicy/IResolutionPolicy;

    .line 43
    iput-object p4, p0, Lorg/anddev/andengine/engine/options/EngineOptions;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    .line 44
    return-void
.end method


# virtual methods
.method public getCamera()Lorg/anddev/andengine/engine/camera/Camera;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/anddev/andengine/engine/options/EngineOptions;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    return-object v0
.end method

.method public getRenderOptions()Lorg/anddev/andengine/engine/options/RenderOptions;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/anddev/andengine/engine/options/EngineOptions;->mRenderOptions:Lorg/anddev/andengine/engine/options/RenderOptions;

    return-object v0
.end method

.method public getResolutionPolicy()Lorg/anddev/andengine/engine/options/resolutionpolicy/IResolutionPolicy;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/anddev/andengine/engine/options/EngineOptions;->mResolutionPolicy:Lorg/anddev/andengine/engine/options/resolutionpolicy/IResolutionPolicy;

    return-object v0
.end method

.method public getScreenOrientation()Lorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/anddev/andengine/engine/options/EngineOptions;->mScreenOrientation:Lorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;

    return-object v0
.end method

.method public getTouchOptions()Lorg/anddev/andengine/engine/options/TouchOptions;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/anddev/andengine/engine/options/EngineOptions;->mTouchOptions:Lorg/anddev/andengine/engine/options/TouchOptions;

    return-object v0
.end method

.method public getUpdateThreadPriority()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lorg/anddev/andengine/engine/options/EngineOptions;->mUpdateThreadPriority:I

    return v0
.end method

.method public getWakeLockOptions()Lorg/anddev/andengine/engine/options/WakeLockOptions;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/anddev/andengine/engine/options/EngineOptions;->mWakeLockOptions:Lorg/anddev/andengine/engine/options/WakeLockOptions;

    return-object v0
.end method

.method public isFullscreen()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lorg/anddev/andengine/engine/options/EngineOptions;->mFullscreen:Z

    return v0
.end method

.method public needsMusic()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lorg/anddev/andengine/engine/options/EngineOptions;->mNeedsMusic:Z

    return v0
.end method

.method public needsSound()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lorg/anddev/andengine/engine/options/EngineOptions;->mNeedsSound:Z

    return v0
.end method

.method public setNeedsMusic(Z)Lorg/anddev/andengine/engine/options/EngineOptions;
    .locals 0
    .param p1, "pNeedsMusic"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lorg/anddev/andengine/engine/options/EngineOptions;->mNeedsMusic:Z

    .line 100
    return-object p0
.end method

.method public setNeedsSound(Z)Lorg/anddev/andengine/engine/options/EngineOptions;
    .locals 0
    .param p1, "pNeedsSound"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lorg/anddev/andengine/engine/options/EngineOptions;->mNeedsSound:Z

    .line 91
    return-object p0
.end method

.method public setUpdateThreadPriority(I)V
    .locals 0
    .param p1, "pUpdateThreadPriority"    # I

    .prologue
    .line 82
    iput p1, p0, Lorg/anddev/andengine/engine/options/EngineOptions;->mUpdateThreadPriority:I

    .line 83
    return-void
.end method

.method public setWakeLockOptions(Lorg/anddev/andengine/engine/options/WakeLockOptions;)Lorg/anddev/andengine/engine/options/EngineOptions;
    .locals 0
    .param p1, "pWakeLockOptions"    # Lorg/anddev/andengine/engine/options/WakeLockOptions;

    .prologue
    .line 108
    iput-object p1, p0, Lorg/anddev/andengine/engine/options/EngineOptions;->mWakeLockOptions:Lorg/anddev/andengine/engine/options/WakeLockOptions;

    .line 109
    return-object p0
.end method
