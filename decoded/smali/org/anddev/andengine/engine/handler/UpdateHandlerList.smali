.class public Lorg/anddev/andengine/engine/handler/UpdateHandlerList;
.super Lorg/anddev/andengine/util/SmartList;
.source "UpdateHandlerList.java"

# interfaces
.implements Lorg/anddev/andengine/engine/handler/IUpdateHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/anddev/andengine/util/SmartList",
        "<",
        "Lorg/anddev/andengine/engine/handler/IUpdateHandler;",
        ">;",
        "Lorg/anddev/andengine/engine/handler/IUpdateHandler;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7ab717f11bdc2b5dL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/anddev/andengine/util/SmartList;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "pCapacity"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/SmartList;-><init>(I)V

    .line 33
    return-void
.end method


# virtual methods
.method public onUpdate(F)V
    .locals 3
    .param p1, "pSecondsElapsed"    # F

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/handler/UpdateHandlerList;->size()I

    move-result v0

    .line 46
    .local v0, "handlerCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    .line 49
    return-void

    .line 47
    :cond_0
    invoke-virtual {p0, v1}, Lorg/anddev/andengine/engine/handler/UpdateHandlerList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/anddev/andengine/engine/handler/IUpdateHandler;

    invoke-interface {v2, p1}, Lorg/anddev/andengine/engine/handler/IUpdateHandler;->onUpdate(F)V

    .line 46
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 53
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/handler/UpdateHandlerList;->size()I

    move-result v0

    .line 54
    .local v0, "handlerCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    .line 57
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0, v1}, Lorg/anddev/andengine/engine/handler/UpdateHandlerList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/anddev/andengine/engine/handler/IUpdateHandler;

    invoke-interface {v2}, Lorg/anddev/andengine/engine/handler/IUpdateHandler;->reset()V

    .line 54
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method
