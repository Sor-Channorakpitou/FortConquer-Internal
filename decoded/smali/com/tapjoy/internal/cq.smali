.class public final Lcom/tapjoy/internal/cq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/cq$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 41
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 43
    const-string v1, "unknown"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calling this from your main thread can lead to deadlock"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_2
    const/4 v3, 0x0

    .line 51
    :try_start_0
    invoke-static {p1}, Lcom/tapjoy/internal/cq$a;->a(Landroid/content/Context;)Lcom/tapjoy/internal/cq$a;

    move-result-object v3

    .line 52
    invoke-virtual {v3}, Lcom/tapjoy/internal/cq$a;->a()Lcom/tapjoy/internal/cr;

    move-result-object v2

    .line 53
    invoke-interface {v2}, Lcom/tapjoy/internal/cr;->a()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tapjoy/internal/cq;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    const/4 v4, 0x1

    :try_start_1
    invoke-interface {v2, v4}, Lcom/tapjoy/internal/cr;->a(Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tapjoy/internal/cq;->b:Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :goto_1
    if-eqz v3, :cond_3

    .line 75
    :try_start_2
    invoke-virtual {p1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_d

    :cond_3
    :goto_2
    move v0, v1

    .line 79
    goto :goto_0

    .line 56
    :catch_0
    move-exception v2

    .line 59
    const/4 v4, 0x1

    :try_start_3
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 62
    :catch_1
    move-exception v2

    .line 63
    const/4 v4, 0x1

    :try_start_4
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 73
    if-eqz v3, :cond_0

    .line 75
    :try_start_5
    invoke-virtual {p1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_e

    goto :goto_0

    .line 76
    :catch_2
    move-exception v2

    .line 77
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    goto :goto_0

    .line 76
    :catch_3
    move-exception v2

    .line 77
    new-array v3, v1, [Ljava/lang/Object;

    aput-object v2, v3, v0

    goto :goto_2

    .line 64
    :catch_4
    move-exception v2

    .line 65
    const/4 v4, 0x1

    :try_start_6
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 73
    if-eqz v3, :cond_0

    .line 75
    :try_start_7
    invoke-virtual {p1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_f

    goto :goto_0

    .line 76
    :catch_5
    move-exception v2

    .line 77
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    goto :goto_0

    .line 66
    :catch_6
    move-exception v2

    .line 67
    if-eqz v3, :cond_0

    .line 75
    :try_start_8
    invoke-virtual {p1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_10

    goto :goto_0

    .line 76
    :catch_7
    move-exception v2

    .line 77
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    goto :goto_0

    .line 68
    :catch_8
    move-exception v2

    .line 69
    if-eqz v3, :cond_0

    .line 75
    :try_start_9
    invoke-virtual {p1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_11

    goto :goto_0

    .line 76
    :catch_9
    move-exception v2

    .line 77
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    goto :goto_0

    .line 70
    :catch_a
    move-exception v2

    .line 71
    if-eqz v3, :cond_0

    .line 75
    :try_start_a
    invoke-virtual {p1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_12

    goto :goto_0

    .line 76
    :catch_b
    move-exception v2

    .line 77
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v2

    if-eqz v3, :cond_4

    .line 75
    :try_start_b
    invoke-virtual {p1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_13

    .line 79
    :cond_4
    :goto_3
    throw v2

    .line 76
    :catch_c
    move-exception v3

    .line 77
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    goto :goto_3

    :catch_d
    move-exception v0

    goto :goto_2

    .line 79
    :catch_e
    move-exception v1

    goto/16 :goto_0

    :catch_f
    move-exception v1

    goto/16 :goto_0

    :catch_10
    move-exception v1

    goto/16 :goto_0

    :catch_11
    move-exception v1

    goto/16 :goto_0

    :catch_12
    move-exception v1

    goto/16 :goto_0

    :catch_13
    move-exception v0

    goto :goto_3
.end method
