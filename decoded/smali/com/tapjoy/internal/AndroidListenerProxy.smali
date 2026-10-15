.class public Lcom/tapjoy/internal/AndroidListenerProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/AndroidListenerProxy$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static getListener(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 32
    .local p0, "proxy":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    .line 33
    instance-of v1, v0, Lcom/tapjoy/internal/AndroidListenerProxy$a;

    if-eqz v1, :cond_0

    .line 34
    check-cast v0, Lcom/tapjoy/internal/AndroidListenerProxy$a;

    invoke-static {v0}, Lcom/tapjoy/internal/AndroidListenerProxy$a;->a(Lcom/tapjoy/internal/AndroidListenerProxy$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not a proxy instance from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/tapjoy/internal/AndroidListenerProxy;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newProxyInstance(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 22
    .local p0, "listener":Ljava/lang/Object;, "TT;"
    .local p1, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lcom/tapjoy/internal/AndroidListenerProxy$a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/tapjoy/internal/AndroidListenerProxy$a;-><init>(Ljava/lang/Object;Ljava/lang/Thread;Landroid/os/Looper;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
