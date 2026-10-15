.class Lorg/anddev/andengine/engine/Engine$UpdateThread;
.super Ljava/lang/Thread;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/anddev/andengine/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateThread"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/anddev/andengine/engine/Engine;


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/engine/Engine;)V
    .locals 1

    .prologue
    .line 676
    iput-object p1, p0, Lorg/anddev/andengine/engine/Engine$UpdateThread;->this$0:Lorg/anddev/andengine/engine/Engine;

    .line 677
    const-string v0, "UpdateThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 678
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 682
    iget-object v1, p0, Lorg/anddev/andengine/engine/Engine$UpdateThread;->this$0:Lorg/anddev/andengine/engine/Engine;

    invoke-static {v1}, Lorg/anddev/andengine/engine/Engine;->access$0(Lorg/anddev/andengine/engine/Engine;)Lorg/anddev/andengine/engine/options/EngineOptions;

    move-result-object v1

    invoke-virtual {v1}, Lorg/anddev/andengine/engine/options/EngineOptions;->getUpdateThreadPriority()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 685
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/anddev/andengine/engine/Engine$UpdateThread;->this$0:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v1}, Lorg/anddev/andengine/engine/Engine;->onTickUpdate()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 687
    :catch_0
    move-exception v0

    .line 688
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "UpdateThread interrupted. Don\'t worry - this Exception is most likely expected!"

    invoke-static {v1, v0}, Lorg/anddev/andengine/util/Debug;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 689
    invoke-virtual {p0}, Lorg/anddev/andengine/engine/Engine$UpdateThread;->interrupt()V

    .line 691
    return-void
.end method
