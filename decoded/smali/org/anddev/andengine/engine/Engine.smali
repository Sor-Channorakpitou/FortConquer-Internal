.class public Lorg/anddev/andengine/engine/Engine;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lorg/anddev/andengine/input/touch/controller/ITouchController$ITouchEventCallback;
.implements Lorg/anddev/andengine/util/constants/TimeConstants;
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/engine/Engine$State;,
        Lorg/anddev/andengine/engine/Engine$UpdateThread;
    }
.end annotation


# static fields
.field private static final SENSORDELAY_DEFAULT:Lorg/anddev/andengine/sensor/SensorDelay;

.field private static final UPDATEHANDLERS_CAPACITY_DEFAULT:I = 0x20


# instance fields
.field private mAccelerometerData:Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;

.field private mAccelerometerListener:Lorg/anddev/andengine/sensor/accelerometer/IAccelerometerListener;

.field private final mBufferObjectManager:Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;

.field protected final mCamera:Lorg/anddev/andengine/engine/camera/Camera;

.field private final mEngineOptions:Lorg/anddev/andengine/engine/options/EngineOptions;

.field private final mFontManager:Lorg/anddev/andengine/opengl/font/FontManager;

.field private mIsMethodTracing:Z

.field private mLastTick:J

.field private mLocation:Landroid/location/Location;

.field private mLocationListener:Lorg/anddev/andengine/sensor/location/ILocationListener;

.field private mMusicManager:Lorg/anddev/andengine/audio/music/MusicManager;

.field private mOrientationData:Lorg/anddev/andengine/sensor/orientation/OrientationData;

.field private mOrientationListener:Lorg/anddev/andengine/sensor/orientation/IOrientationListener;

.field private mRunning:Z

.field protected mScene:Lorg/anddev/andengine/entity/scene/Scene;

.field private mSecondsElapsedTotal:F

.field private mSoundManager:Lorg/anddev/andengine/audio/sound/SoundManager;

.field protected mSurfaceHeight:I

.field protected mSurfaceWidth:I

.field private final mTextureManager:Lorg/anddev/andengine/opengl/texture/TextureManager;

.field private final mThreadLocker:Lorg/anddev/andengine/engine/Engine$State;

.field private mTouchController:Lorg/anddev/andengine/input/touch/controller/ITouchController;

.field private final mUpdateHandlers:Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

.field private final mUpdateThread:Lorg/anddev/andengine/engine/Engine$UpdateThread;

.field private final mUpdateThreadRunnableHandler:Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lorg/anddev/andengine/sensor/SensorDelay;->GAME:Lorg/anddev/andengine/sensor/SensorDelay;

    sput-object v0, Lorg/anddev/andengine/engine/Engine;->SENSORDELAY_DEFAULT:Lorg/anddev/andengine/sensor/SensorDelay;

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/engine/options/EngineOptions;)V
    .locals 3
    .param p1, "pEngineOptions"    # Lorg/anddev/andengine/engine/options/EngineOptions;

    .prologue
    const/4 v2, 0x1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/engine/Engine;->mRunning:Z

    .line 77
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/anddev/andengine/engine/Engine;->mLastTick:J

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lorg/anddev/andengine/engine/Engine;->mSecondsElapsedTotal:F

    .line 80
    new-instance v0, Lorg/anddev/andengine/engine/Engine$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/anddev/andengine/engine/Engine$State;-><init>(Lorg/anddev/andengine/engine/Engine$State;)V

    iput-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mThreadLocker:Lorg/anddev/andengine/engine/Engine$State;

    .line 82
    new-instance v0, Lorg/anddev/andengine/engine/Engine$UpdateThread;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/engine/Engine$UpdateThread;-><init>(Lorg/anddev/andengine/engine/Engine;)V

    iput-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mUpdateThread:Lorg/anddev/andengine/engine/Engine$UpdateThread;

    .line 84
    new-instance v0, Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;

    invoke-direct {v0}, Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mUpdateThreadRunnableHandler:Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;

    .line 93
    new-instance v0, Lorg/anddev/andengine/opengl/texture/TextureManager;

    invoke-direct {v0}, Lorg/anddev/andengine/opengl/texture/TextureManager;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mTextureManager:Lorg/anddev/andengine/opengl/texture/TextureManager;

    .line 94
    new-instance v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;

    invoke-direct {v0}, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mBufferObjectManager:Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;

    .line 95
    new-instance v0, Lorg/anddev/andengine/opengl/font/FontManager;

    invoke-direct {v0}, Lorg/anddev/andengine/opengl/font/FontManager;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mFontManager:Lorg/anddev/andengine/opengl/font/FontManager;

    .line 110
    new-instance v0, Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/anddev/andengine/engine/handler/UpdateHandlerList;-><init>(I)V

    iput-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mUpdateHandlers:Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

    .line 112
    iput v2, p0, Lorg/anddev/andengine/engine/Engine;->mSurfaceWidth:I

    .line 113
    iput v2, p0, Lorg/anddev/andengine/engine/Engine;->mSurfaceHeight:I

    .line 122
    invoke-static {}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->reset()V

    .line 123
    invoke-static {}, Lorg/anddev/andengine/audio/sound/SoundFactory;->reset()V

    .line 124
    invoke-static {}, Lorg/anddev/andengine/audio/music/MusicFactory;->reset()V

    .line 125
    invoke-static {}, Lorg/anddev/andengine/opengl/font/FontFactory;->reset()V

    .line 127
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mBufferObjectManager:Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;

    invoke-static {v0}, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->setActiveInstance(Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;)V

    .line 129
    iput-object p1, p0, Lorg/anddev/andengine/engine/Engine;->mEngineOptions:Lorg/anddev/andengine/engine/options/EngineOptions;

    .line 130
    new-instance v0, Lorg/anddev/andengine/input/touch/controller/SingleTouchControler;

    invoke-direct {v0}, Lorg/anddev/andengine/input/touch/controller/SingleTouchControler;-><init>()V

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/engine/Engine;->setTouchController(Lorg/anddev/andengine/input/touch/controller/ITouchController;)V

    .line 131
    invoke-virtual {p1}, Lorg/anddev/andengine/engine/options/EngineOptions;->getCamera()Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v0

    iput-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    .line 133
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mEngineOptions:Lorg/anddev/andengine/engine/options/EngineOptions;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/options/EngineOptions;->needsSound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Lorg/anddev/andengine/audio/sound/SoundManager;

    invoke-direct {v0}, Lorg/anddev/andengine/audio/sound/SoundManager;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mSoundManager:Lorg/anddev/andengine/audio/sound/SoundManager;

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mEngineOptions:Lorg/anddev/andengine/engine/options/EngineOptions;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/options/EngineOptions;->needsMusic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    new-instance v0, Lorg/anddev/andengine/audio/music/MusicManager;

    invoke-direct {v0}, Lorg/anddev/andengine/audio/music/MusicManager;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mMusicManager:Lorg/anddev/andengine/audio/music/MusicManager;

    .line 141
    :cond_1
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mUpdateThread:Lorg/anddev/andengine/engine/Engine$UpdateThread;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine$UpdateThread;->start()V

    .line 142
    return-void
.end method

.method static synthetic access$0(Lorg/anddev/andengine/engine/Engine;)Lorg/anddev/andengine/engine/options/EngineOptions;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mEngineOptions:Lorg/anddev/andengine/engine/options/EngineOptions;

    return-object v0
.end method

.method private getNanosecondsElapsed()J
    .locals 4

    .prologue
    .line 523
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 525
    .local v0, "now":J
    iget-wide v2, p0, Lorg/anddev/andengine/engine/Engine;->mLastTick:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/anddev/andengine/engine/Engine;->calculateNanosecondsElapsed(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method private isSensorSupported(Landroid/hardware/SensorManager;I)Z
    .locals 1
    .param p1, "pSensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "pType"    # I

    .prologue
    .line 658
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerSelfAsSensorListener(Landroid/hardware/SensorManager;ILorg/anddev/andengine/sensor/SensorDelay;)V
    .locals 3
    .param p1, "pSensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "pType"    # I
    .param p3, "pSensorDelay"    # Lorg/anddev/andengine/sensor/SensorDelay;

    .prologue
    .line 662
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 663
    .local v0, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {p3}, Lorg/anddev/andengine/sensor/SensorDelay;->getDelay()I

    move-result v1

    invoke-virtual {p1, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 664
    return-void
.end method

.method private unregisterSelfAsSensorListener(Landroid/hardware/SensorManager;I)V
    .locals 3
    .param p1, "pSensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "pType"    # I

    .prologue
    .line 667
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 668
    .local v0, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {p1, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 669
    return-void
.end method

.method private yieldDraw()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 470
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mThreadLocker:Lorg/anddev/andengine/engine/Engine$State;

    .line 471
    .local v0, "threadLocker":Lorg/anddev/andengine/engine/Engine$State;
    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine$State;->notifyCanDraw()V

    .line 472
    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine$State;->waitUntilCanUpdate()V

    .line 473
    return-void
.end method


# virtual methods
.method protected calculateNanosecondsElapsed(JJ)J
    .locals 3
    .param p1, "pNow"    # J
    .param p3, "pLastTick"    # J

    .prologue
    .line 529
    sub-long v0, p1, p3

    return-wide v0
.end method

.method public clearUpdateHandlers()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mUpdateHandlers:Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/handler/UpdateHandlerList;->clear()V

    .line 248
    return-void
.end method

.method protected convertSurfaceToSceneTouchEvent(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/input/touch/TouchEvent;)V
    .locals 2
    .param p1, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;
    .param p2, "pSurfaceTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    .line 448
    iget v0, p0, Lorg/anddev/andengine/engine/Engine;->mSurfaceWidth:I

    iget v1, p0, Lorg/anddev/andengine/engine/Engine;->mSurfaceHeight:I

    invoke-virtual {p1, p2, v0, v1}, Lorg/anddev/andengine/engine/camera/Camera;->convertSurfaceToSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;II)V

    .line 449
    return-void
.end method

.method public disableAccelerometerSensor(Landroid/content/Context;)Z
    .locals 3
    .param p1, "pContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 603
    const-string v2, "sensor"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 604
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    invoke-direct {p0, v0, v1}, Lorg/anddev/andengine/engine/Engine;->isSensorSupported(Landroid/hardware/SensorManager;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 605
    invoke-direct {p0, v0, v1}, Lorg/anddev/andengine/engine/Engine;->unregisterSelfAsSensorListener(Landroid/hardware/SensorManager;I)V

    .line 608
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableLocationSensor(Landroid/content/Context;)V
    .locals 2
    .param p1, "pContext"    # Landroid/content/Context;

    .prologue
    .line 565
    const-string v1, "location"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 566
    .local v0, "locationManager":Landroid/location/LocationManager;
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 567
    return-void
.end method

.method public disableOrientationSensor(Landroid/content/Context;)Z
    .locals 4
    .param p1, "pContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 647
    const-string v2, "sensor"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 648
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    invoke-direct {p0, v0, v1}, Lorg/anddev/andengine/engine/Engine;->isSensorSupported(Landroid/hardware/SensorManager;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v3}, Lorg/anddev/andengine/engine/Engine;->isSensorSupported(Landroid/hardware/SensorManager;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 649
    invoke-direct {p0, v0, v1}, Lorg/anddev/andengine/engine/Engine;->unregisterSelfAsSensorListener(Landroid/hardware/SensorManager;I)V

    .line 650
    invoke-direct {p0, v0, v3}, Lorg/anddev/andengine/engine/Engine;->unregisterSelfAsSensorListener(Landroid/hardware/SensorManager;I)V

    .line 653
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableAccelerometerSensor(Landroid/content/Context;Lorg/anddev/andengine/sensor/accelerometer/IAccelerometerListener;)Z
    .locals 2
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pAccelerometerListener"    # Lorg/anddev/andengine/sensor/accelerometer/IAccelerometerListener;

    .prologue
    .line 573
    new-instance v0, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerSensorOptions;

    sget-object v1, Lorg/anddev/andengine/engine/Engine;->SENSORDELAY_DEFAULT:Lorg/anddev/andengine/sensor/SensorDelay;

    invoke-direct {v0, v1}, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerSensorOptions;-><init>(Lorg/anddev/andengine/sensor/SensorDelay;)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/anddev/andengine/engine/Engine;->enableAccelerometerSensor(Landroid/content/Context;Lorg/anddev/andengine/sensor/accelerometer/IAccelerometerListener;Lorg/anddev/andengine/sensor/accelerometer/AccelerometerSensorOptions;)Z

    move-result v0

    return v0
.end method

.method public enableAccelerometerSensor(Landroid/content/Context;Lorg/anddev/andengine/sensor/accelerometer/IAccelerometerListener;Lorg/anddev/andengine/sensor/accelerometer/AccelerometerSensorOptions;)Z
    .locals 5
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pAccelerometerListener"    # Lorg/anddev/andengine/sensor/accelerometer/IAccelerometerListener;
    .param p3, "pAccelerometerSensorOptions"    # Lorg/anddev/andengine/sensor/accelerometer/AccelerometerSensorOptions;

    .prologue
    const/4 v4, 0x1

    .line 580
    const-string v3, "sensor"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    .line 581
    .local v2, "sensorManager":Landroid/hardware/SensorManager;
    invoke-direct {p0, v2, v4}, Lorg/anddev/andengine/engine/Engine;->isSensorSupported(Landroid/hardware/SensorManager;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 582
    iput-object p2, p0, Lorg/anddev/andengine/engine/Engine;->mAccelerometerListener:Lorg/anddev/andengine/sensor/accelerometer/IAccelerometerListener;

    .line 584
    iget-object v3, p0, Lorg/anddev/andengine/engine/Engine;->mAccelerometerData:Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;

    if-nez v3, :cond_0

    .line 585
    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 586
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v1

    .line 587
    .local v1, "displayRotation":I
    new-instance v3, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;

    invoke-direct {v3, v1}, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;-><init>(I)V

    iput-object v3, p0, Lorg/anddev/andengine/engine/Engine;->mAccelerometerData:Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;

    .line 590
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "displayRotation":I
    :cond_0
    invoke-virtual {p3}, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerSensorOptions;->getSensorDelay()Lorg/anddev/andengine/sensor/SensorDelay;

    move-result-object v3

    invoke-direct {p0, v2, v4, v3}, Lorg/anddev/andengine/engine/Engine;->registerSelfAsSensorListener(Landroid/hardware/SensorManager;ILorg/anddev/andengine/sensor/SensorDelay;)V

    move v3, v4

    .line 594
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public enableLocationSensor(Landroid/content/Context;Lorg/anddev/andengine/sensor/location/ILocationListener;Lorg/anddev/andengine/sensor/location/LocationSensorOptions;)V
    .locals 6
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pLocationListener"    # Lorg/anddev/andengine/sensor/location/ILocationListener;
    .param p3, "pLocationSensorOptions"    # Lorg/anddev/andengine/sensor/location/LocationSensorOptions;

    .prologue
    .line 554
    iput-object p2, p0, Lorg/anddev/andengine/engine/Engine;->mLocationListener:Lorg/anddev/andengine/sensor/location/ILocationListener;

    .line 556
    const-string v2, "location"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 557
    .local v0, "locationManager":Landroid/location/LocationManager;
    invoke-virtual {p3}, Lorg/anddev/andengine/sensor/location/LocationSensorOptions;->isEnabledOnly()Z

    move-result v2

    invoke-virtual {v0, p3, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 559
    .local v1, "locationProvider":Ljava/lang/String;
    invoke-virtual {p3}, Lorg/anddev/andengine/sensor/location/LocationSensorOptions;->getMinimumTriggerTime()J

    move-result-wide v2

    invoke-virtual {p3}, Lorg/anddev/andengine/sensor/location/LocationSensorOptions;->getMinimumTriggerDistance()J

    move-result-wide v4

    long-to-float v4, v4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 561
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/anddev/andengine/engine/Engine;->onLocationChanged(Landroid/location/Location;)V

    .line 562
    return-void
.end method

.method public enableOrientationSensor(Landroid/content/Context;Lorg/anddev/andengine/sensor/orientation/IOrientationListener;)Z
    .locals 2
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pOrientationListener"    # Lorg/anddev/andengine/sensor/orientation/IOrientationListener;

    .prologue
    .line 616
    new-instance v0, Lorg/anddev/andengine/sensor/orientation/OrientationSensorOptions;

    sget-object v1, Lorg/anddev/andengine/engine/Engine;->SENSORDELAY_DEFAULT:Lorg/anddev/andengine/sensor/SensorDelay;

    invoke-direct {v0, v1}, Lorg/anddev/andengine/sensor/orientation/OrientationSensorOptions;-><init>(Lorg/anddev/andengine/sensor/SensorDelay;)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/anddev/andengine/engine/Engine;->enableOrientationSensor(Landroid/content/Context;Lorg/anddev/andengine/sensor/orientation/IOrientationListener;Lorg/anddev/andengine/sensor/orientation/OrientationSensorOptions;)Z

    move-result v0

    return v0
.end method

.method public enableOrientationSensor(Landroid/content/Context;Lorg/anddev/andengine/sensor/orientation/IOrientationListener;Lorg/anddev/andengine/sensor/orientation/OrientationSensorOptions;)Z
    .locals 6
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pOrientationListener"    # Lorg/anddev/andengine/sensor/orientation/IOrientationListener;
    .param p3, "pOrientationSensorOptions"    # Lorg/anddev/andengine/sensor/orientation/OrientationSensorOptions;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 623
    const-string v3, "sensor"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    .line 624
    .local v2, "sensorManager":Landroid/hardware/SensorManager;
    invoke-direct {p0, v2, v4}, Lorg/anddev/andengine/engine/Engine;->isSensorSupported(Landroid/hardware/SensorManager;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v2, v5}, Lorg/anddev/andengine/engine/Engine;->isSensorSupported(Landroid/hardware/SensorManager;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 625
    iput-object p2, p0, Lorg/anddev/andengine/engine/Engine;->mOrientationListener:Lorg/anddev/andengine/sensor/orientation/IOrientationListener;

    .line 627
    iget-object v3, p0, Lorg/anddev/andengine/engine/Engine;->mOrientationData:Lorg/anddev/andengine/sensor/orientation/OrientationData;

    if-nez v3, :cond_0

    .line 628
    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 629
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v1

    .line 630
    .local v1, "displayRotation":I
    new-instance v3, Lorg/anddev/andengine/sensor/orientation/OrientationData;

    invoke-direct {v3, v1}, Lorg/anddev/andengine/sensor/orientation/OrientationData;-><init>(I)V

    iput-object v3, p0, Lorg/anddev/andengine/engine/Engine;->mOrientationData:Lorg/anddev/andengine/sensor/orientation/OrientationData;

    .line 633
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "displayRotation":I
    :cond_0
    invoke-virtual {p3}, Lorg/anddev/andengine/sensor/orientation/OrientationSensorOptions;->getSensorDelay()Lorg/anddev/andengine/sensor/SensorDelay;

    move-result-object v3

    invoke-direct {p0, v2, v4, v3}, Lorg/anddev/andengine/engine/Engine;->registerSelfAsSensorListener(Landroid/hardware/SensorManager;ILorg/anddev/andengine/sensor/SensorDelay;)V

    .line 634
    invoke-virtual {p3}, Lorg/anddev/andengine/sensor/orientation/OrientationSensorOptions;->getSensorDelay()Lorg/anddev/andengine/sensor/SensorDelay;

    move-result-object v3

    invoke-direct {p0, v2, v5, v3}, Lorg/anddev/andengine/engine/Engine;->registerSelfAsSensorListener(Landroid/hardware/SensorManager;ILorg/anddev/andengine/sensor/SensorDelay;)V

    move v3, v4

    .line 638
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public enableVibrator(Landroid/content/Context;)Z
    .locals 1
    .param p1, "pContext"    # Landroid/content/Context;

    .prologue
    .line 533
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mVibrator:Landroid/os/Vibrator;

    .line 534
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAccelerometerData()Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mAccelerometerData:Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;

    return-object v0
.end method

.method public getCamera()Lorg/anddev/andengine/engine/camera/Camera;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    return-object v0
.end method

.method protected getCameraFromSurfaceTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Lorg/anddev/andengine/engine/camera/Camera;
    .locals 1
    .param p1, "pTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    .line 440
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/Engine;->getCamera()Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v0

    return-object v0
.end method

.method public getEngineOptions()Lorg/anddev/andengine/engine/options/EngineOptions;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mEngineOptions:Lorg/anddev/andengine/engine/options/EngineOptions;

    return-object v0
.end method

.method public getFontManager()Lorg/anddev/andengine/opengl/font/FontManager;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mFontManager:Lorg/anddev/andengine/opengl/font/FontManager;

    return-object v0
.end method

.method public getMusicManager()Lorg/anddev/andengine/audio/music/MusicManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mMusicManager:Lorg/anddev/andengine/audio/music/MusicManager;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mMusicManager:Lorg/anddev/andengine/audio/music/MusicManager;

    return-object v0

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "To enable the MusicManager, check the EngineOptions!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOrientationData()Lorg/anddev/andengine/sensor/orientation/OrientationData;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mOrientationData:Lorg/anddev/andengine/sensor/orientation/OrientationData;

    return-object v0
.end method

.method public getScene()Lorg/anddev/andengine/entity/scene/Scene;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mScene:Lorg/anddev/andengine/entity/scene/Scene;

    return-object v0
.end method

.method protected getSceneFromSurfaceTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Lorg/anddev/andengine/entity/scene/Scene;
    .locals 1
    .param p1, "pTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    .line 444
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mScene:Lorg/anddev/andengine/entity/scene/Scene;

    return-object v0
.end method

.method public getSecondsElapsedTotal()F
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lorg/anddev/andengine/engine/Engine;->mSecondsElapsedTotal:F

    return v0
.end method

.method public getSoundManager()Lorg/anddev/andengine/audio/sound/SoundManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mSoundManager:Lorg/anddev/andengine/audio/sound/SoundManager;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mSoundManager:Lorg/anddev/andengine/audio/sound/SoundManager;

    return-object v0

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "To enable the SoundManager, check the EngineOptions!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSurfaceHeight()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lorg/anddev/andengine/engine/Engine;->mSurfaceHeight:I

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lorg/anddev/andengine/engine/Engine;->mSurfaceWidth:I

    return v0
.end method

.method public getTextureManager()Lorg/anddev/andengine/opengl/texture/TextureManager;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mTextureManager:Lorg/anddev/andengine/opengl/texture/TextureManager;

    return-object v0
.end method

.method public getTouchController()Lorg/anddev/andengine/input/touch/controller/ITouchController;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mTouchController:Lorg/anddev/andengine/input/touch/controller/ITouchController;

    return-object v0
.end method

.method public interruptUpdateThread()V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mUpdateThread:Lorg/anddev/andengine/engine/Engine$UpdateThread;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine$UpdateThread;->interrupt()V

    .line 425
    return-void
.end method

.method public isMethodTracing()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lorg/anddev/andengine/engine/Engine;->mIsMethodTracing:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lorg/anddev/andengine/engine/Engine;->mRunning:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .param p1, "pSensor"    # Landroid/hardware/Sensor;
    .param p2, "pAccuracy"    # I

    .prologue
    .line 282
    iget-boolean v0, p0, Lorg/anddev/andengine/engine/Engine;->mRunning:Z

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 285
    :pswitch_0
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mAccelerometerData:Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mAccelerometerData:Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;

    invoke-virtual {v0, p2}, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;->setAccuracy(I)V

    .line 287
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mAccelerometerListener:Lorg/anddev/andengine/sensor/accelerometer/IAccelerometerListener;

    iget-object v1, p0, Lorg/anddev/andengine/engine/Engine;->mAccelerometerData:Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;

    invoke-interface {v0, v1}, Lorg/anddev/andengine/sensor/accelerometer/IAccelerometerListener;->onAccelerometerChanged(Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;)V

    goto :goto_0

    .line 288
    :cond_1
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mOrientationData:Lorg/anddev/andengine/sensor/orientation/OrientationData;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mOrientationData:Lorg/anddev/andengine/sensor/orientation/OrientationData;

    invoke-virtual {v0, p2}, Lorg/anddev/andengine/sensor/orientation/OrientationData;->setAccelerometerAccuracy(I)V

    .line 290
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mOrientationListener:Lorg/anddev/andengine/sensor/orientation/IOrientationListener;

    iget-object v1, p0, Lorg/anddev/andengine/engine/Engine;->mOrientationData:Lorg/anddev/andengine/sensor/orientation/OrientationData;

    invoke-interface {v0, v1}, Lorg/anddev/andengine/sensor/orientation/IOrientationListener;->onOrientationChanged(Lorg/anddev/andengine/sensor/orientation/OrientationData;)V

    goto :goto_0

    .line 294
    :pswitch_1
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mOrientationData:Lorg/anddev/andengine/sensor/orientation/OrientationData;

    invoke-virtual {v0, p2}, Lorg/anddev/andengine/sensor/orientation/OrientationData;->setMagneticFieldAccuracy(I)V

    .line 295
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mOrientationListener:Lorg/anddev/andengine/sensor/orientation/IOrientationListener;

    iget-object v1, p0, Lorg/anddev/andengine/engine/Engine;->mOrientationData:Lorg/anddev/andengine/sensor/orientation/OrientationData;

    invoke-interface {v0, v1}, Lorg/anddev/andengine/sensor/orientation/IOrientationListener;->onOrientationChanged(Lorg/anddev/andengine/sensor/orientation/OrientationData;)V

    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 499
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mThreadLocker:Lorg/anddev/andengine/engine/Engine$State;

    .line 501
    .local v0, "threadLocker":Lorg/anddev/andengine/engine/Engine$State;
    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine$State;->waitUntilCanDraw()V

    .line 503
    iget-object v1, p0, Lorg/anddev/andengine/engine/Engine;->mTextureManager:Lorg/anddev/andengine/opengl/texture/TextureManager;

    invoke-virtual {v1, p1}, Lorg/anddev/andengine/opengl/texture/TextureManager;->updateTextures(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 504
    iget-object v1, p0, Lorg/anddev/andengine/engine/Engine;->mFontManager:Lorg/anddev/andengine/opengl/font/FontManager;

    invoke-virtual {v1, p1}, Lorg/anddev/andengine/opengl/font/FontManager;->updateFonts(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 505
    sget-boolean v1, Lorg/anddev/andengine/opengl/util/GLHelper;->EXTENSIONS_VERTEXBUFFEROBJECTS:Z

    if-eqz v1, :cond_0

    .line 506
    iget-object v2, p0, Lorg/anddev/andengine/engine/Engine;->mBufferObjectManager:Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;

    move-object v1, p1

    check-cast v1, Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v2, v1}, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->updateBufferObjects(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 509
    :cond_0
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/engine/Engine;->onDrawScene(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 511
    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine$State;->notifyCanUpdate()V

    .line 512
    return-void
.end method

.method protected onDrawScene(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 515
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/Engine;->getCamera()Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v0

    .line 517
    .local v0, "camera":Lorg/anddev/andengine/engine/camera/Camera;
    iget-object v1, p0, Lorg/anddev/andengine/engine/Engine;->mScene:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v1, p1, v0}, Lorg/anddev/andengine/entity/scene/Scene;->onDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    .line 519
    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/camera/Camera;->onDrawHUD(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 520
    return-void
.end method

.method public onLoadComplete(Lorg/anddev/andengine/entity/scene/Scene;)V
    .locals 0
    .param p1, "pScene"    # Lorg/anddev/andengine/entity/scene/Scene;

    .prologue
    .line 452
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/engine/Engine;->setScene(Lorg/anddev/andengine/entity/scene/Scene;)V

    .line 453
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "pLocation"    # Landroid/location/Location;

    .prologue
    .line 324
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 325
    iput-object p1, p0, Lorg/anddev/andengine/engine/Engine;->mLocation:Landroid/location/Location;

    .line 334
    :goto_0
    return-void

    .line 327
    :cond_0
    if-nez p1, :cond_1

    .line 328
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mLocationListener:Lorg/anddev/andengine/sensor/location/ILocationListener;

    invoke-interface {v0}, Lorg/anddev/andengine/sensor/location/ILocationListener;->onLocationLost()V

    goto :goto_0

    .line 330
    :cond_1
    iput-object p1, p0, Lorg/anddev/andengine/engine/Engine;->mLocation:Landroid/location/Location;

    .line 331
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mLocationListener:Lorg/anddev/andengine/sensor/location/ILocationListener;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/sensor/location/ILocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 437
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "pProvider"    # Ljava/lang/String;

    .prologue
    .line 338
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mLocationListener:Lorg/anddev/andengine/sensor/location/ILocationListener;

    invoke-interface {v0}, Lorg/anddev/andengine/sensor/location/ILocationListener;->onLocationProviderDisabled()V

    .line 339
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "pProvider"    # Ljava/lang/String;

    .prologue
    .line 343
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mLocationListener:Lorg/anddev/andengine/sensor/location/ILocationListener;

    invoke-interface {v0}, Lorg/anddev/andengine/sensor/location/ILocationListener;->onLocationProviderEnabled()V

    .line 344
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mTextureManager:Lorg/anddev/andengine/opengl/texture/TextureManager;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/TextureManager;->reloadTextures()V

    .line 430
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mFontManager:Lorg/anddev/andengine/opengl/font/FontManager;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/font/FontManager;->reloadFonts()V

    .line 431
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mBufferObjectManager:Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;

    invoke-static {v0}, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->setActiveInstance(Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;)V

    .line 432
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mBufferObjectManager:Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->reloadBufferObjects()V

    .line 433
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "pEvent"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 303
    iget-boolean v0, p0, Lorg/anddev/andengine/engine/Engine;->mRunning:Z

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 306
    :pswitch_0
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mAccelerometerData:Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mAccelerometerData:Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;->setValues([F)V

    .line 308
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mAccelerometerListener:Lorg/anddev/andengine/sensor/accelerometer/IAccelerometerListener;

    iget-object v1, p0, Lorg/anddev/andengine/engine/Engine;->mAccelerometerData:Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;

    invoke-interface {v0, v1}, Lorg/anddev/andengine/sensor/accelerometer/IAccelerometerListener;->onAccelerometerChanged(Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;)V

    goto :goto_0

    .line 309
    :cond_1
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mOrientationData:Lorg/anddev/andengine/sensor/orientation/OrientationData;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mOrientationData:Lorg/anddev/andengine/sensor/orientation/OrientationData;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/sensor/orientation/OrientationData;->setAccelerometerValues([F)V

    .line 311
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mOrientationListener:Lorg/anddev/andengine/sensor/orientation/IOrientationListener;

    iget-object v1, p0, Lorg/anddev/andengine/engine/Engine;->mOrientationData:Lorg/anddev/andengine/sensor/orientation/OrientationData;

    invoke-interface {v0, v1}, Lorg/anddev/andengine/sensor/orientation/IOrientationListener;->onOrientationChanged(Lorg/anddev/andengine/sensor/orientation/OrientationData;)V

    goto :goto_0

    .line 315
    :pswitch_1
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mOrientationData:Lorg/anddev/andengine/sensor/orientation/OrientationData;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/sensor/orientation/OrientationData;->setMagneticFieldValues([F)V

    .line 316
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mOrientationListener:Lorg/anddev/andengine/sensor/orientation/IOrientationListener;

    iget-object v1, p0, Lorg/anddev/andengine/engine/Engine;->mOrientationData:Lorg/anddev/andengine/sensor/orientation/OrientationData;

    invoke-interface {v0, v1}, Lorg/anddev/andengine/sensor/orientation/IOrientationListener;->onOrientationChanged(Lorg/anddev/andengine/sensor/orientation/OrientationData;)V

    goto :goto_0

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "pProvider"    # Ljava/lang/String;
    .param p2, "pStatus"    # I
    .param p3, "pExtras"    # Landroid/os/Bundle;

    .prologue
    .line 348
    packed-switch p2, :pswitch_data_0

    .line 359
    :goto_0
    return-void

    .line 350
    :pswitch_0
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mLocationListener:Lorg/anddev/andengine/sensor/location/ILocationListener;

    sget-object v1, Lorg/anddev/andengine/sensor/location/LocationProviderStatus;->AVAILABLE:Lorg/anddev/andengine/sensor/location/LocationProviderStatus;

    invoke-interface {v0, v1, p3}, Lorg/anddev/andengine/sensor/location/ILocationListener;->onLocationProviderStatusChanged(Lorg/anddev/andengine/sensor/location/LocationProviderStatus;Landroid/os/Bundle;)V

    goto :goto_0

    .line 353
    :pswitch_1
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mLocationListener:Lorg/anddev/andengine/sensor/location/ILocationListener;

    sget-object v1, Lorg/anddev/andengine/sensor/location/LocationProviderStatus;->OUT_OF_SERVICE:Lorg/anddev/andengine/sensor/location/LocationProviderStatus;

    invoke-interface {v0, v1, p3}, Lorg/anddev/andengine/sensor/location/ILocationListener;->onLocationProviderStatusChanged(Lorg/anddev/andengine/sensor/location/LocationProviderStatus;Landroid/os/Bundle;)V

    goto :goto_0

    .line 356
    :pswitch_2
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mLocationListener:Lorg/anddev/andengine/sensor/location/ILocationListener;

    sget-object v1, Lorg/anddev/andengine/sensor/location/LocationProviderStatus;->TEMPORARILY_UNAVAILABLE:Lorg/anddev/andengine/sensor/location/LocationProviderStatus;

    invoke-interface {v0, v1, p3}, Lorg/anddev/andengine/sensor/location/ILocationListener;->onLocationProviderStatusChanged(Lorg/anddev/andengine/sensor/location/LocationProviderStatus;Landroid/os/Bundle;)V

    goto :goto_0

    .line 348
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method onTickUpdate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 456
    iget-boolean v2, p0, Lorg/anddev/andengine/engine/Engine;->mRunning:Z

    if-eqz v2, :cond_0

    .line 457
    invoke-direct {p0}, Lorg/anddev/andengine/engine/Engine;->getNanosecondsElapsed()J

    move-result-wide v0

    .line 459
    .local v0, "secondsElapsed":J
    invoke-virtual {p0, v0, v1}, Lorg/anddev/andengine/engine/Engine;->onUpdate(J)V

    .line 461
    invoke-direct {p0}, Lorg/anddev/andengine/engine/Engine;->yieldDraw()V

    .line 467
    .end local v0    # "secondsElapsed":J
    :goto_0
    return-void

    .line 463
    :cond_0
    invoke-direct {p0}, Lorg/anddev/andengine/engine/Engine;->yieldDraw()V

    .line 465
    const-wide/16 v2, 0x10

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "pView"    # Landroid/view/View;
    .param p2, "pSurfaceMotionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 363
    iget-boolean v2, p0, Lorg/anddev/andengine/engine/Engine;->mRunning:Z

    if-eqz v2, :cond_0

    .line 364
    iget-object v2, p0, Lorg/anddev/andengine/engine/Engine;->mTouchController:Lorg/anddev/andengine/input/touch/controller/ITouchController;

    invoke-interface {v2, p2}, Lorg/anddev/andengine/input/touch/controller/ITouchController;->onHandleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 370
    .local v1, "handled":Z
    const-wide/16 v2, 0x14

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    .end local v1    # "handled":Z
    :goto_0
    return v1

    .line 371
    .restart local v1    # "handled":Z
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {v0}, Lorg/anddev/andengine/util/Debug;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 376
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "handled":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 3
    .param p1, "pSurfaceTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    .line 386
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/engine/Engine;->getSceneFromSurfaceTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v1

    .line 387
    .local v1, "scene":Lorg/anddev/andengine/entity/scene/Scene;
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/engine/Engine;->getCameraFromSurfaceTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v0

    .line 389
    .local v0, "camera":Lorg/anddev/andengine/engine/camera/Camera;
    invoke-virtual {p0, v0, p1}, Lorg/anddev/andengine/engine/Engine;->convertSurfaceToSceneTouchEvent(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/input/touch/TouchEvent;)V

    .line 391
    invoke-virtual {p0, v0, p1}, Lorg/anddev/andengine/engine/Engine;->onTouchHUD(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    const/4 v2, 0x1

    .line 395
    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0, v1, p1}, Lorg/anddev/andengine/engine/Engine;->onTouchScene(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method protected onTouchHUD(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 1
    .param p1, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;
    .param p2, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    .line 400
    invoke-virtual {p1}, Lorg/anddev/andengine/engine/camera/Camera;->hasHUD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {p1}, Lorg/anddev/andengine/engine/camera/Camera;->getHUD()Lorg/anddev/andengine/engine/camera/hud/HUD;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/anddev/andengine/engine/camera/hud/HUD;->onSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    move-result v0

    .line 403
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onTouchScene(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 1
    .param p1, "pScene"    # Lorg/anddev/andengine/entity/scene/Scene;
    .param p2, "pSceneTouchEvent"    # Lorg/anddev/andengine/input/touch/TouchEvent;

    .prologue
    .line 408
    if-eqz p1, :cond_0

    .line 409
    invoke-virtual {p1, p2}, Lorg/anddev/andengine/entity/scene/Scene;->onSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    move-result v0

    .line 411
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onUpdate(J)V
    .locals 5
    .param p1, "pNanosecondsElapsed"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 476
    long-to-float v1, p1

    const v2, 0x4e6e6b28    # 1.0E9f

    div-float v0, v1, v2

    .line 478
    .local v0, "pSecondsElapsed":F
    iget v1, p0, Lorg/anddev/andengine/engine/Engine;->mSecondsElapsedTotal:F

    add-float/2addr v1, v0

    iput v1, p0, Lorg/anddev/andengine/engine/Engine;->mSecondsElapsedTotal:F

    .line 479
    iget-wide v2, p0, Lorg/anddev/andengine/engine/Engine;->mLastTick:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lorg/anddev/andengine/engine/Engine;->mLastTick:J

    .line 481
    iget-object v1, p0, Lorg/anddev/andengine/engine/Engine;->mTouchController:Lorg/anddev/andengine/input/touch/controller/ITouchController;

    invoke-interface {v1, v0}, Lorg/anddev/andengine/input/touch/controller/ITouchController;->onUpdate(F)V

    .line 482
    invoke-virtual {p0, v0}, Lorg/anddev/andengine/engine/Engine;->updateUpdateHandlers(F)V

    .line 483
    invoke-virtual {p0, v0}, Lorg/anddev/andengine/engine/Engine;->onUpdateScene(F)V

    .line 484
    return-void
.end method

.method protected onUpdateCameraSurface()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 193
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    iget v1, p0, Lorg/anddev/andengine/engine/Engine;->mSurfaceWidth:I

    iget v2, p0, Lorg/anddev/andengine/engine/Engine;->mSurfaceHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Lorg/anddev/andengine/engine/camera/Camera;->setSurfaceSize(IIII)V

    .line 194
    return-void
.end method

.method protected onUpdateScene(F)V
    .locals 1
    .param p1, "pSecondsElapsed"    # F

    .prologue
    .line 487
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mScene:Lorg/anddev/andengine/entity/scene/Scene;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mScene:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/scene/Scene;->onUpdate(F)V

    .line 490
    :cond_0
    return-void
.end method

.method public registerUpdateHandler(Lorg/anddev/andengine/engine/handler/IUpdateHandler;)V
    .locals 1
    .param p1, "pUpdateHandler"    # Lorg/anddev/andengine/engine/handler/IUpdateHandler;

    .prologue
    .line 251
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mUpdateHandlers:Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/handler/UpdateHandlerList;->add(Ljava/lang/Object;)Z

    .line 252
    return-void
.end method

.method public runOnUpdateThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "pRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 420
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mUpdateThreadRunnableHandler:Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 421
    return-void
.end method

.method public setScene(Lorg/anddev/andengine/entity/scene/Scene;)V
    .locals 0
    .param p1, "pScene"    # Lorg/anddev/andengine/entity/scene/Scene;

    .prologue
    .line 170
    iput-object p1, p0, Lorg/anddev/andengine/engine/Engine;->mScene:Lorg/anddev/andengine/entity/scene/Scene;

    .line 171
    return-void
.end method

.method public setSurfaceSize(II)V
    .locals 0
    .param p1, "pSurfaceWidth"    # I
    .param p2, "pSurfaceHeight"    # I

    .prologue
    .line 187
    iput p1, p0, Lorg/anddev/andengine/engine/Engine;->mSurfaceWidth:I

    .line 188
    iput p2, p0, Lorg/anddev/andengine/engine/Engine;->mSurfaceHeight:I

    .line 189
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/Engine;->onUpdateCameraSurface()V

    .line 190
    return-void
.end method

.method public setTouchController(Lorg/anddev/andengine/input/touch/controller/ITouchController;)V
    .locals 2
    .param p1, "pTouchController"    # Lorg/anddev/andengine/input/touch/controller/ITouchController;

    .prologue
    .line 209
    iput-object p1, p0, Lorg/anddev/andengine/engine/Engine;->mTouchController:Lorg/anddev/andengine/input/touch/controller/ITouchController;

    .line 210
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mTouchController:Lorg/anddev/andengine/input/touch/controller/ITouchController;

    iget-object v1, p0, Lorg/anddev/andengine/engine/Engine;->mEngineOptions:Lorg/anddev/andengine/engine/options/EngineOptions;

    invoke-virtual {v1}, Lorg/anddev/andengine/engine/options/EngineOptions;->getTouchOptions()Lorg/anddev/andengine/engine/options/TouchOptions;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/anddev/andengine/input/touch/controller/ITouchController;->applyTouchOptions(Lorg/anddev/andengine/engine/options/TouchOptions;)V

    .line 211
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mTouchController:Lorg/anddev/andengine/input/touch/controller/ITouchController;

    invoke-interface {v0, p0}, Lorg/anddev/andengine/input/touch/controller/ITouchController;->setTouchEventCallback(Lorg/anddev/andengine/input/touch/controller/ITouchController$ITouchEventCallback;)V

    .line 212
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/anddev/andengine/engine/Engine;->mRunning:Z

    if-nez v0, :cond_0

    .line 154
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/anddev/andengine/engine/Engine;->mLastTick:J

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/engine/Engine;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :cond_0
    monitor-exit p0

    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startMethodTracing(Ljava/lang/String;)V
    .locals 1
    .param p1, "pTraceFileName"    # Ljava/lang/String;

    .prologue
    .line 263
    iget-boolean v0, p0, Lorg/anddev/andengine/engine/Engine;->mIsMethodTracing:Z

    if-nez v0, :cond_0

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/engine/Engine;->mIsMethodTracing:Z

    .line 265
    invoke-static {p1}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    .line 267
    :cond_0
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/anddev/andengine/engine/Engine;->mRunning:Z

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/engine/Engine;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_0
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopMethodTracing()V
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lorg/anddev/andengine/engine/Engine;->mIsMethodTracing:Z

    if-eqz v0, :cond_0

    .line 271
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/engine/Engine;->mIsMethodTracing:Z

    .line 274
    :cond_0
    return-void
.end method

.method public unregisterUpdateHandler(Lorg/anddev/andengine/engine/handler/IUpdateHandler;)V
    .locals 1
    .param p1, "pUpdateHandler"    # Lorg/anddev/andengine/engine/handler/IUpdateHandler;

    .prologue
    .line 255
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mUpdateHandlers:Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/handler/UpdateHandlerList;->remove(Ljava/lang/Object;)Z

    .line 256
    return-void
.end method

.method protected updateUpdateHandlers(F)V
    .locals 1
    .param p1, "pSecondsElapsed"    # F

    .prologue
    .line 493
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mUpdateThreadRunnableHandler:Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;->onUpdate(F)V

    .line 494
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mUpdateHandlers:Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/handler/UpdateHandlerList;->onUpdate(F)V

    .line 495
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/Engine;->getCamera()Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/camera/Camera;->onUpdate(F)V

    .line 496
    return-void
.end method

.method public vibrate(J)V
    .locals 3
    .param p1, "pMilliseconds"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 538
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 543
    return-void

    .line 541
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to enable the Vibrator before you can use it!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public vibrate([JI)V
    .locals 2
    .param p1, "pPattern"    # [J
    .param p2, "pRepeat"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 546
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 551
    return-void

    .line 549
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to enable the Vibrator before you can use it!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
