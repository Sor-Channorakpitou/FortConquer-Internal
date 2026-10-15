.class public Lcom/tapjoy/internal/eg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/tapjoy/internal/eg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/eg;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/tapjoy/internal/eg;->a:Ljava/lang/String;

    .line 17
    return-void
.end method

.method private declared-synchronized a(Ljava/net/InetAddress;)V
    .locals 1

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tapjoy/internal/eg;->b:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 23
    :try_start_0
    sget-object v0, Lcom/tapjoy/internal/eg;->c:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/tapjoy/internal/eg;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 25
    sget-object v1, Lcom/tapjoy/internal/eg;->c:Ljava/lang/String;

    .line 27
    invoke-direct {p0, v0}, Lcom/tapjoy/internal/eg;->a(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    sget-object v0, Lcom/tapjoy/internal/eg;->c:Ljava/lang/String;

    goto :goto_0
.end method
