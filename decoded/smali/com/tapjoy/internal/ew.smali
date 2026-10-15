.class Lcom/tapjoy/internal/ew;
.super Lcom/tapjoy/internal/fh;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/reflect/Method;

.field private static final b:Ljava/lang/reflect/Method;

.field private static final c:Ljava/lang/reflect/Method;

.field private static final d:Ljava/lang/reflect/Method;

.field private static final e:Ljava/lang/reflect/Method;

.field private static final f:Ljava/lang/reflect/Method;

.field private static final g:Ljava/lang/String;


# instance fields
.field private final h:Landroid/os/StatFs;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 19
    const-class v0, Lcom/tapjoy/internal/ew;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ew;->g:Ljava/lang/String;

    .line 25
    const-class v0, Landroid/os/StatFs;

    const-string v1, "getBlockSize"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/tapjoy/internal/ew;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ew;->a:Ljava/lang/reflect/Method;

    .line 26
    const-class v0, Landroid/os/StatFs;

    const-string v1, "getBlockSizeLong"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/tapjoy/internal/ew;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ew;->b:Ljava/lang/reflect/Method;

    .line 27
    const-class v0, Landroid/os/StatFs;

    const-string v1, "getAvailableBlocks"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/tapjoy/internal/ew;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ew;->c:Ljava/lang/reflect/Method;

    .line 28
    const-class v0, Landroid/os/StatFs;

    const-string v1, "getAvailableBlocksLong"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/tapjoy/internal/ew;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ew;->d:Ljava/lang/reflect/Method;

    .line 29
    const-class v0, Landroid/os/StatFs;

    const-string v1, "getBlockCount"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/tapjoy/internal/ew;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ew;->e:Ljava/lang/reflect/Method;

    .line 30
    const-class v0, Landroid/os/StatFs;

    const-string v1, "getBlockCountLong"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/tapjoy/internal/ew;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ew;->f:Ljava/lang/reflect/Method;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/tapjoy/internal/fh;-><init>()V

    .line 35
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/ew;->h:Landroid/os/StatFs;

    .line 36
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    sget-object v0, Lcom/tapjoy/internal/ew;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/tapjoy/internal/ew;->h:Landroid/os/StatFs;

    sget-object v1, Lcom/tapjoy/internal/ew;->f:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tapjoy/internal/ew;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 43
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 54
    :goto_0
    return-wide v0

    .line 47
    :cond_0
    sget-object v0, Lcom/tapjoy/internal/ew;->e:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/tapjoy/internal/ew;->h:Landroid/os/StatFs;

    sget-object v1, Lcom/tapjoy/internal/ew;->e:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tapjoy/internal/ew;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 50
    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 54
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final b()J
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 59
    sget-object v0, Lcom/tapjoy/internal/ew;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/tapjoy/internal/ew;->h:Landroid/os/StatFs;

    sget-object v1, Lcom/tapjoy/internal/ew;->b:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tapjoy/internal/ew;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 62
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 73
    :goto_0
    return-wide v0

    .line 66
    :cond_0
    sget-object v0, Lcom/tapjoy/internal/ew;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/tapjoy/internal/ew;->h:Landroid/os/StatFs;

    sget-object v1, Lcom/tapjoy/internal/ew;->a:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tapjoy/internal/ew;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 69
    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 73
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final c()J
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    sget-object v0, Lcom/tapjoy/internal/ew;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/tapjoy/internal/ew;->h:Landroid/os/StatFs;

    sget-object v1, Lcom/tapjoy/internal/ew;->d:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tapjoy/internal/ew;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 81
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 92
    :goto_0
    return-wide v0

    .line 85
    :cond_0
    sget-object v0, Lcom/tapjoy/internal/ew;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/tapjoy/internal/ew;->h:Landroid/os/StatFs;

    sget-object v1, Lcom/tapjoy/internal/ew;->c:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tapjoy/internal/ew;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 88
    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 92
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
