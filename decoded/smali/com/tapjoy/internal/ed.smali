.class Lcom/tapjoy/internal/ed;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:I

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v1, p0, Lcom/tapjoy/internal/ed;->a:Ljava/lang/String;

    .line 6
    const-string v0, "0"

    iput-object v0, p0, Lcom/tapjoy/internal/ed;->b:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/tapjoy/internal/ed;->c:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lcom/tapjoy/internal/ed;->d:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lcom/tapjoy/internal/ed;->e:Ljava/lang/String;

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/ed;->f:I

    .line 11
    iput-object v1, p0, Lcom/tapjoy/internal/ed;->g:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/tapjoy/internal/ed;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tapjoy/internal/ed;->e:Ljava/lang/String;

    return-object v0
.end method
