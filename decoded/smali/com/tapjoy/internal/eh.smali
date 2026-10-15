.class Lcom/tapjoy/internal/eh;
.super Lcom/tapjoy/internal/fh;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/reflect/Method;

.field private static final b:Ljava/lang/reflect/Method;

.field private static final c:Ljava/lang/reflect/Method;

.field private static final d:Ljava/lang/String;


# instance fields
.field private final e:Landroid/view/Display;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 17
    const-class v0, Lcom/tapjoy/internal/eh;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/eh;->d:Ljava/lang/String;

    .line 23
    const-class v0, Landroid/view/Display;

    const-string v1, "getWidth"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/tapjoy/internal/eh;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/eh;->a:Ljava/lang/reflect/Method;

    .line 24
    const-class v0, Landroid/view/Display;

    const-string v1, "getHeight"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/tapjoy/internal/eh;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/eh;->b:Ljava/lang/reflect/Method;

    .line 25
    const-class v0, Landroid/view/Display;

    const-string v1, "getSize"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/graphics/Point;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tapjoy/internal/eh;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/eh;->c:Ljava/lang/reflect/Method;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/view/Display;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/tapjoy/internal/fh;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/tapjoy/internal/eh;->e:Landroid/view/Display;

    .line 31
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 35
    sget-object v0, Lcom/tapjoy/internal/eh;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 39
    iget-object v2, p0, Lcom/tapjoy/internal/eh;->e:Landroid/view/Display;

    sget-object v3, Lcom/tapjoy/internal/eh;->c:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/tapjoy/internal/eh;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 50
    :goto_0
    return v0

    .line 42
    :cond_0
    sget-object v0, Lcom/tapjoy/internal/eh;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/tapjoy/internal/eh;->e:Landroid/view/Display;

    sget-object v2, Lcom/tapjoy/internal/eh;->a:Ljava/lang/reflect/Method;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/tapjoy/internal/eh;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 45
    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 49
    :cond_1
    sget-object v0, Lcom/tapjoy/internal/eh;->d:Ljava/lang/String;

    const-string v2, "unable to get display width"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 50
    goto :goto_0
.end method

.method public final b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 55
    sget-object v0, Lcom/tapjoy/internal/eh;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 59
    iget-object v2, p0, Lcom/tapjoy/internal/eh;->e:Landroid/view/Display;

    sget-object v3, Lcom/tapjoy/internal/eh;->c:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/tapjoy/internal/eh;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 70
    :goto_0
    return v0

    .line 62
    :cond_0
    sget-object v0, Lcom/tapjoy/internal/eh;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/tapjoy/internal/eh;->e:Landroid/view/Display;

    sget-object v2, Lcom/tapjoy/internal/eh;->b:Ljava/lang/reflect/Method;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/tapjoy/internal/eh;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 65
    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 69
    :cond_1
    sget-object v0, Lcom/tapjoy/internal/eh;->d:Ljava/lang/String;

    const-string v2, "unable to get display height"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 70
    goto :goto_0
.end method
