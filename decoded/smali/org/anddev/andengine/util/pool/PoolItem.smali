.class public abstract Lorg/anddev/andengine/util/pool/PoolItem;
.super Ljava/lang/Object;
.source "PoolItem.java"


# instance fields
.field mParent:Lorg/anddev/andengine/util/pool/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/anddev/andengine/util/pool/Pool",
            "<+",
            "Lorg/anddev/andengine/util/pool/PoolItem;",
            ">;"
        }
    .end annotation
.end field

.field mRecycled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/util/pool/PoolItem;->mRecycled:Z

    .line 12
    return-void
.end method


# virtual methods
.method public getParent()Lorg/anddev/andengine/util/pool/Pool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/anddev/andengine/util/pool/Pool",
            "<+",
            "Lorg/anddev/andengine/util/pool/PoolItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lorg/anddev/andengine/util/pool/PoolItem;->mParent:Lorg/anddev/andengine/util/pool/Pool;

    return-object v0
.end method

.method public isFromPool(Lorg/anddev/andengine/util/pool/Pool;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/pool/Pool",
            "<+",
            "Lorg/anddev/andengine/util/pool/PoolItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "pPool":Lorg/anddev/andengine/util/pool/Pool;, "Lorg/anddev/andengine/util/pool/Pool<+Lorg/anddev/andengine/util/pool/PoolItem;>;"
    iget-object v0, p0, Lorg/anddev/andengine/util/pool/PoolItem;->mParent:Lorg/anddev/andengine/util/pool/Pool;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecycled()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lorg/anddev/andengine/util/pool/PoolItem;->mRecycled:Z

    return v0
.end method

.method protected onObtain()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method protected onRecycle()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lorg/anddev/andengine/util/pool/PoolItem;->mParent:Lorg/anddev/andengine/util/pool/Pool;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Item already recycled!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/util/pool/PoolItem;->mParent:Lorg/anddev/andengine/util/pool/Pool;

    invoke-virtual {v0, p0}, Lorg/anddev/andengine/util/pool/Pool;->recycle(Lorg/anddev/andengine/util/pool/PoolItem;)V

    .line 66
    return-void
.end method
