.class public Lorg/anddev/andengine/entity/particle/ParticleSystem;
.super Lorg/anddev/andengine/entity/Entity;
.source "ParticleSystem.java"


# static fields
.field private static final BLENDFUNCTION_DESTINATION_DEFAULT:I = 0x303

.field private static final BLENDFUNCTION_SOURCE_DEFAULT:I = 0x1


# instance fields
.field private final POSITION_OFFSET:[F

.field private mDestinationBlendFunction:I

.field private final mParticleEmitter:Lorg/anddev/andengine/entity/particle/emitter/IParticleEmitter;

.field private mParticleInitializerCount:I

.field private final mParticleInitializers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/entity/particle/initializer/IParticleInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private mParticleModifierCount:I

.field private final mParticleModifiers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/entity/particle/modifier/IParticleModifier;",
            ">;"
        }
    .end annotation
.end field

.field private final mParticles:[Lorg/anddev/andengine/entity/particle/Particle;

.field private mParticlesAlive:I

.field private mParticlesDueToSpawn:F

.field private final mParticlesMaximum:I

.field private mParticlesSpawnEnabled:Z

.field private final mRateMaximum:F

.field private final mRateMinimum:F

.field private mSharedParticleVertexBuffer:Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

.field private mSourceBlendFunction:I

.field private final mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;


# direct methods
.method public constructor <init>(FFFFFFILorg/anddev/andengine/opengl/texture/region/TextureRegion;)V
    .locals 6
    .param p1, "pX"    # F
    .param p2, "pY"    # F
    .param p3, "pWidth"    # F
    .param p4, "pHeight"    # F
    .param p5, "pRateMinimum"    # F
    .param p6, "pRateMaximum"    # F
    .param p7, "pParticlesMaximum"    # I
    .param p8, "pTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 81
    new-instance v1, Lorg/anddev/andengine/entity/particle/emitter/RectangleParticleEmitter;

    mul-float v0, p3, v2

    add-float/2addr v0, p1

    mul-float/2addr v2, p4

    add-float/2addr v2, p2

    invoke-direct {v1, v0, v2, p3, p4}, Lorg/anddev/andengine/entity/particle/emitter/RectangleParticleEmitter;-><init>(FFFF)V

    move-object v0, p0

    move v2, p5

    move v3, p6

    move v4, p7

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/particle/ParticleSystem;-><init>(Lorg/anddev/andengine/entity/particle/emitter/IParticleEmitter;FFILorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/entity/particle/emitter/IParticleEmitter;FFILorg/anddev/andengine/opengl/texture/region/TextureRegion;)V
    .locals 2
    .param p1, "pParticleEmitter"    # Lorg/anddev/andengine/entity/particle/emitter/IParticleEmitter;
    .param p2, "pRateMinimum"    # F
    .param p3, "pRateMaximum"    # F
    .param p4, "pParticlesMaximum"    # I
    .param p5, "pTextureRegion"    # Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, v0, v0}, Lorg/anddev/andengine/entity/Entity;-><init>(FF)V

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->POSITION_OFFSET:[F

    .line 49
    iput v1, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mSourceBlendFunction:I

    .line 50
    const/16 v0, 0x303

    iput v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mDestinationBlendFunction:I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleInitializers:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleModifiers:Ljava/util/ArrayList;

    .line 60
    iput-boolean v1, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesSpawnEnabled:Z

    .line 87
    iput-object p1, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleEmitter:Lorg/anddev/andengine/entity/particle/emitter/IParticleEmitter;

    .line 88
    new-array v0, p4, [Lorg/anddev/andengine/entity/particle/Particle;

    iput-object v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticles:[Lorg/anddev/andengine/entity/particle/Particle;

    .line 89
    iput p2, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mRateMinimum:F

    .line 90
    iput p3, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mRateMaximum:F

    .line 91
    iput p4, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesMaximum:I

    .line 92
    iput-object p5, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    .line 94
    iget-object v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleEmitter:Lorg/anddev/andengine/entity/particle/emitter/IParticleEmitter;

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/particle/ParticleSystem;->registerUpdateHandler(Lorg/anddev/andengine/engine/handler/IUpdateHandler;)V

    .line 95
    return-void
.end method

.method private determineCurrentRate()F
    .locals 3

    .prologue
    .line 253
    iget v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mRateMinimum:F

    iget v1, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mRateMaximum:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 254
    iget v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mRateMinimum:F

    .line 256
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/anddev/andengine/util/MathUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget v1, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mRateMaximum:F

    iget v2, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mRateMinimum:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mRateMinimum:F

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private spawnParticle()V
    .locals 10

    .prologue
    .line 208
    iget-object v4, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticles:[Lorg/anddev/andengine/entity/particle/Particle;

    .line 210
    .local v4, "particles":[Lorg/anddev/andengine/entity/particle/Particle;
    iget v5, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesAlive:I

    .line 211
    .local v5, "particlesAlive":I
    iget v8, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesMaximum:I

    if-ge v5, v8, :cond_0

    .line 212
    aget-object v1, v4, v5

    .line 215
    .local v1, "particle":Lorg/anddev/andengine/entity/particle/Particle;
    iget-object v8, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleEmitter:Lorg/anddev/andengine/entity/particle/emitter/IParticleEmitter;

    iget-object v9, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->POSITION_OFFSET:[F

    invoke-interface {v8, v9}, Lorg/anddev/andengine/entity/particle/emitter/IParticleEmitter;->getPositionOffset([F)V

    .line 217
    iget-object v8, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->POSITION_OFFSET:[F

    const/4 v9, 0x0

    aget v6, v8, v9

    .line 218
    .local v6, "x":F
    iget-object v8, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->POSITION_OFFSET:[F

    const/4 v9, 0x1

    aget v7, v8, v9

    .line 220
    .local v7, "y":F
    if-eqz v1, :cond_1

    .line 221
    invoke-virtual {v1}, Lorg/anddev/andengine/entity/particle/Particle;->reset()V

    .line 222
    invoke-virtual {v1, v6, v7}, Lorg/anddev/andengine/entity/particle/Particle;->setPosition(FF)V

    .line 233
    :goto_0
    iget v8, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mSourceBlendFunction:I

    iget v9, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mDestinationBlendFunction:I

    invoke-virtual {v1, v8, v9}, Lorg/anddev/andengine/entity/particle/Particle;->setBlendFunction(II)V

    .line 237
    iget-object v2, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleInitializers:Ljava/util/ArrayList;

    .line 238
    .local v2, "particleInitializers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/entity/particle/initializer/IParticleInitializer;>;"
    iget v8, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleInitializerCount:I

    add-int/lit8 v0, v8, -0x1

    .local v0, "i":I
    :goto_1
    if-gez v0, :cond_3

    .line 242
    iget-object v3, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleModifiers:Ljava/util/ArrayList;

    .line 243
    .local v3, "particleModifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/entity/particle/modifier/IParticleModifier;>;"
    iget v8, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleModifierCount:I

    add-int/lit8 v0, v8, -0x1

    :goto_2
    if-gez v0, :cond_4

    .line 248
    iget v8, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesAlive:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesAlive:I

    .line 250
    .end local v0    # "i":I
    .end local v1    # "particle":Lorg/anddev/andengine/entity/particle/Particle;
    .end local v2    # "particleInitializers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/entity/particle/initializer/IParticleInitializer;>;"
    .end local v3    # "particleModifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/entity/particle/modifier/IParticleModifier;>;"
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_0
    return-void

    .line 224
    .restart local v1    # "particle":Lorg/anddev/andengine/entity/particle/Particle;
    .restart local v6    # "x":F
    .restart local v7    # "y":F
    :cond_1
    if-nez v5, :cond_2

    .line 226
    new-instance v1, Lorg/anddev/andengine/entity/particle/Particle;

    .end local v1    # "particle":Lorg/anddev/andengine/entity/particle/Particle;
    iget-object v8, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v1, v6, v7, v8}, Lorg/anddev/andengine/entity/particle/Particle;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    .line 227
    .restart local v1    # "particle":Lorg/anddev/andengine/entity/particle/Particle;
    invoke-virtual {v1}, Lorg/anddev/andengine/entity/particle/Particle;->getVertexBuffer()Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

    move-result-object v8

    iput-object v8, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mSharedParticleVertexBuffer:Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

    .line 231
    :goto_3
    aput-object v1, v4, v5

    goto :goto_0

    .line 229
    :cond_2
    new-instance v1, Lorg/anddev/andengine/entity/particle/Particle;

    .end local v1    # "particle":Lorg/anddev/andengine/entity/particle/Particle;
    iget-object v8, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    iget-object v9, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mSharedParticleVertexBuffer:Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

    invoke-direct {v1, v6, v7, v8, v9}, Lorg/anddev/andengine/entity/particle/Particle;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;)V

    .restart local v1    # "particle":Lorg/anddev/andengine/entity/particle/Particle;
    goto :goto_3

    .line 239
    .restart local v0    # "i":I
    .restart local v2    # "particleInitializers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/entity/particle/initializer/IParticleInitializer;>;"
    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/anddev/andengine/entity/particle/initializer/IParticleInitializer;

    invoke-interface {v8, v1}, Lorg/anddev/andengine/entity/particle/initializer/IParticleInitializer;->onInitializeParticle(Lorg/anddev/andengine/entity/particle/Particle;)V

    .line 238
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 244
    .restart local v3    # "particleModifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/entity/particle/modifier/IParticleModifier;>;"
    :cond_4
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/anddev/andengine/entity/particle/modifier/IParticleModifier;

    invoke-interface {v8, v1}, Lorg/anddev/andengine/entity/particle/modifier/IParticleModifier;->onInitializeParticle(Lorg/anddev/andengine/entity/particle/Particle;)V

    .line 243
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method private spawnParticles(F)V
    .locals 6
    .param p1, "pSecondsElapsed"    # F

    .prologue
    .line 194
    invoke-direct {p0}, Lorg/anddev/andengine/entity/particle/ParticleSystem;->determineCurrentRate()F

    move-result v0

    .line 195
    .local v0, "currentRate":F
    mul-float v2, v0, p1

    .line 197
    .local v2, "newParticlesThisFrame":F
    iget v4, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesDueToSpawn:F

    add-float/2addr v4, v2

    iput v4, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesDueToSpawn:F

    .line 199
    iget v4, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesMaximum:I

    iget v5, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesAlive:I

    sub-int/2addr v4, v5

    iget v5, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesDueToSpawn:F

    invoke-static {v5}, Landroid/util/FloatMath;->floor(F)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 200
    .local v3, "particlesToSpawnThisFrame":I
    iget v4, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesDueToSpawn:F

    int-to-float v5, v3

    sub-float/2addr v4, v5

    iput v4, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesDueToSpawn:F

    .line 202
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 205
    return-void

    .line 203
    :cond_0
    invoke-direct {p0}, Lorg/anddev/andengine/entity/particle/ParticleSystem;->spawnParticle()V

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addParticleInitializer(Lorg/anddev/andengine/entity/particle/initializer/IParticleInitializer;)V
    .locals 1
    .param p1, "pParticleInitializer"    # Lorg/anddev/andengine/entity/particle/initializer/IParticleInitializer;

    .prologue
    .line 184
    iget-object v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleInitializers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    iget v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleInitializerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleInitializerCount:I

    .line 186
    return-void
.end method

.method public addParticleModifier(Lorg/anddev/andengine/entity/particle/modifier/IParticleModifier;)V
    .locals 1
    .param p1, "pParticleModifier"    # Lorg/anddev/andengine/entity/particle/modifier/IParticleModifier;

    .prologue
    .line 174
    iget-object v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleModifiers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    iget v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleModifierCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleModifierCount:I

    .line 176
    return-void
.end method

.method public getParticleEmitter()Lorg/anddev/andengine/entity/particle/emitter/IParticleEmitter;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleEmitter:Lorg/anddev/andengine/entity/particle/emitter/IParticleEmitter;

    return-object v0
.end method

.method public isParticlesSpawnEnabled()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesSpawnEnabled:Z

    return v0
.end method

.method protected onManagedDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 3
    .param p1, "pGL"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "pCamera"    # Lorg/anddev/andengine/engine/camera/Camera;

    .prologue
    .line 132
    iget-object v1, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticles:[Lorg/anddev/andengine/entity/particle/Particle;

    .line 133
    .local v1, "particles":[Lorg/anddev/andengine/entity/particle/Particle;
    iget v2, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesAlive:I

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 136
    return-void

    .line 134
    :cond_0
    aget-object v2, v1, v0

    invoke-virtual {v2, p1, p2}, Lorg/anddev/andengine/entity/particle/Particle;->onDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    .line 133
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method protected onManagedUpdate(F)V
    .locals 8
    .param p1, "pSecondsElapsed"    # F

    .prologue
    .line 140
    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/Entity;->onManagedUpdate(F)V

    .line 142
    iget-boolean v7, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesSpawnEnabled:Z

    if-eqz v7, :cond_0

    .line 143
    invoke-direct {p0, p1}, Lorg/anddev/andengine/entity/particle/ParticleSystem;->spawnParticles(F)V

    .line 146
    :cond_0
    iget-object v5, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticles:[Lorg/anddev/andengine/entity/particle/Particle;

    .line 148
    .local v5, "particles":[Lorg/anddev/andengine/entity/particle/Particle;
    iget-object v4, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleModifiers:Ljava/util/ArrayList;

    .line 149
    .local v4, "particleModifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/anddev/andengine/entity/particle/modifier/IParticleModifier;>;"
    iget v7, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleModifierCount:I

    add-int/lit8 v3, v7, -0x1

    .line 151
    .local v3, "particleModifierCountMinusOne":I
    iget v7, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesAlive:I

    add-int/lit8 v0, v7, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_1

    .line 167
    return-void

    .line 152
    :cond_1
    aget-object v2, v5, v0

    .line 155
    .local v2, "particle":Lorg/anddev/andengine/entity/particle/Particle;
    move v1, v3

    .local v1, "j":I
    :goto_1
    if-gez v1, :cond_3

    .line 159
    invoke-virtual {v2, p1}, Lorg/anddev/andengine/entity/particle/Particle;->onUpdate(F)V

    .line 160
    iget-boolean v7, v2, Lorg/anddev/andengine/entity/particle/Particle;->mDead:Z

    if-eqz v7, :cond_2

    .line 161
    iget v7, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesAlive:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesAlive:I

    .line 162
    iget v6, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesAlive:I

    .line 163
    .local v6, "particlesAlive":I
    aget-object v7, v5, v6

    aput-object v7, v5, v0

    .line 164
    aput-object v2, v5, v6

    .line 151
    .end local v6    # "particlesAlive":I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 156
    :cond_3
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/anddev/andengine/entity/particle/modifier/IParticleModifier;

    invoke-interface {v7, v2}, Lorg/anddev/andengine/entity/particle/modifier/IParticleModifier;->onUpdateParticle(Lorg/anddev/andengine/entity/particle/Particle;)V

    .line 155
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public removeParticleInitializer(Lorg/anddev/andengine/entity/particle/initializer/IParticleInitializer;)V
    .locals 1
    .param p1, "pParticleInitializer"    # Lorg/anddev/andengine/entity/particle/initializer/IParticleInitializer;

    .prologue
    .line 189
    iget v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleInitializerCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleInitializerCount:I

    .line 190
    iget-object v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleInitializers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 191
    return-void
.end method

.method public removeParticleModifier(Lorg/anddev/andengine/entity/particle/modifier/IParticleModifier;)V
    .locals 1
    .param p1, "pParticleModifier"    # Lorg/anddev/andengine/entity/particle/modifier/IParticleModifier;

    .prologue
    .line 179
    iget v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleModifierCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleModifierCount:I

    .line 180
    iget-object v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleModifiers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 181
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lorg/anddev/andengine/entity/Entity;->reset()V

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesDueToSpawn:F

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesAlive:I

    .line 128
    return-void
.end method

.method public setBlendFunction(II)V
    .locals 0
    .param p1, "pSourceBlendFunction"    # I
    .param p2, "pDestinationBlendFunction"    # I

    .prologue
    .line 110
    iput p1, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mSourceBlendFunction:I

    .line 111
    iput p2, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mDestinationBlendFunction:I

    .line 112
    return-void
.end method

.method public setParticlesSpawnEnabled(Z)V
    .locals 0
    .param p1, "pParticlesSpawnEnabled"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesSpawnEnabled:Z

    .line 107
    return-void
.end method
