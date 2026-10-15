.class final Lcom/tapjoy/internal/fc$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/fc;->a(Ljava/lang/Thread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/Thread;

.field final synthetic b:Lcom/tapjoy/internal/fc;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/fc;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 880
    iput-object p1, p0, Lcom/tapjoy/internal/fc$a;->b:Lcom/tapjoy/internal/fc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 881
    iput-object p2, p0, Lcom/tapjoy/internal/fc$a;->a:Ljava/lang/Thread;

    .line 882
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 887
    invoke-static {}, Lcom/tapjoy/internal/fc;->f()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sending interrupt to TID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/internal/fc$a;->a:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 888
    iget-object v0, p0, Lcom/tapjoy/internal/fc$a;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 889
    return-void
.end method
