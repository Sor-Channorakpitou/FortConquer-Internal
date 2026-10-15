.class public final Lcom/tapjoy/internal/gr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/tapjoy/internal/bo;

.field private static final c:Lcom/tapjoy/internal/as;


# instance fields
.field public a:Ljava/net/URL;

.field private d:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/tapjoy/internal/aw;

    invoke-direct {v0}, Lcom/tapjoy/internal/aw;-><init>()V

    instance-of v1, v0, Lcom/tapjoy/internal/ax;

    if-eqz v1, :cond_0

    :goto_0
    sput-object v0, Lcom/tapjoy/internal/gr;->c:Lcom/tapjoy/internal/as;

    .line 56
    new-instance v0, Lcom/tapjoy/internal/gr$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gr$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gr;->b:Lcom/tapjoy/internal/bo;

    return-void

    .line 17
    :cond_0
    new-instance v1, Lcom/tapjoy/internal/au$a;

    check-cast v0, Lcom/tapjoy/internal/av;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/au$a;-><init>(Lcom/tapjoy/internal/av;)V

    move-object v0, v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/tapjoy/internal/bt;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->f()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gr;->a:Ljava/net/URL;

    .line 54
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->i()V

    .line 44
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->m()Ljava/lang/String;

    move-result-object v0

    .line 45
    :goto_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 46
    const-string v1, "url"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->f()Ljava/net/URL;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gr;->a:Ljava/net/URL;

    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->t()V

    goto :goto_1

    .line 52
    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/bt;->j()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/tapjoy/internal/gr;->a:Ljava/net/URL;

    .line 25
    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tapjoy/internal/gr;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 32
    sget-object v0, Lcom/tapjoy/internal/gr;->c:Lcom/tapjoy/internal/as;

    iget-object v1, p0, Lcom/tapjoy/internal/gr;->a:Ljava/net/URL;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/as;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/tapjoy/internal/gr;->d:Landroid/graphics/Bitmap;

    .line 33
    iget-object v0, p0, Lcom/tapjoy/internal/gr;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 34
    sget-object v0, Lcom/tapjoy/internal/u;->a:Lcom/tapjoy/internal/u;

    iget-object v0, p0, Lcom/tapjoy/internal/gr;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/u;->a(Ljava/net/URLConnection;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gr;->d:Landroid/graphics/Bitmap;

    .line 35
    sget-object v0, Lcom/tapjoy/internal/gr;->c:Lcom/tapjoy/internal/as;

    iget-object v1, p0, Lcom/tapjoy/internal/gr;->a:Ljava/net/URL;

    iget-object v2, p0, Lcom/tapjoy/internal/gr;->d:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lcom/tapjoy/internal/as;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    :cond_0
    return-void
.end method
