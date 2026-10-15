.class Lcom/tapjoy/internal/ee$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field b:Lcom/tapjoy/internal/ee;

.field c:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/ee;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/tapjoy/internal/ee$a;->b:Lcom/tapjoy/internal/ee;

    .line 26
    iput-object v0, p0, Lcom/tapjoy/internal/ee$a;->c:Ljava/util/concurrent/CountDownLatch;

    .line 31
    iput-object p1, p0, Lcom/tapjoy/internal/ee$a;->b:Lcom/tapjoy/internal/ee;

    .line 32
    iput-object p2, p0, Lcom/tapjoy/internal/ee$a;->c:Ljava/util/concurrent/CountDownLatch;

    .line 33
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method
