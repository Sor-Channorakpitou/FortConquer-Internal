.class final enum Lcom/tapjoy/internal/bw;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/tapjoy/internal/bw;

.field public static final enum b:Lcom/tapjoy/internal/bw;

.field public static final enum c:Lcom/tapjoy/internal/bw;

.field public static final enum d:Lcom/tapjoy/internal/bw;

.field public static final enum e:Lcom/tapjoy/internal/bw;

.field public static final enum f:Lcom/tapjoy/internal/bw;

.field public static final enum g:Lcom/tapjoy/internal/bw;

.field public static final enum h:Lcom/tapjoy/internal/bw;

.field private static final synthetic i:[Lcom/tapjoy/internal/bw;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    new-instance v0, Lcom/tapjoy/internal/bw;

    const-string v1, "EMPTY_ARRAY"

    invoke-direct {v0, v1, v3}, Lcom/tapjoy/internal/bw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/bw;->a:Lcom/tapjoy/internal/bw;

    .line 35
    new-instance v0, Lcom/tapjoy/internal/bw;

    const-string v1, "NONEMPTY_ARRAY"

    invoke-direct {v0, v1, v4}, Lcom/tapjoy/internal/bw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/bw;->b:Lcom/tapjoy/internal/bw;

    .line 41
    new-instance v0, Lcom/tapjoy/internal/bw;

    const-string v1, "EMPTY_OBJECT"

    invoke-direct {v0, v1, v5}, Lcom/tapjoy/internal/bw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/bw;->c:Lcom/tapjoy/internal/bw;

    .line 47
    new-instance v0, Lcom/tapjoy/internal/bw;

    const-string v1, "DANGLING_NAME"

    invoke-direct {v0, v1, v6}, Lcom/tapjoy/internal/bw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/bw;->d:Lcom/tapjoy/internal/bw;

    .line 53
    new-instance v0, Lcom/tapjoy/internal/bw;

    const-string v1, "NONEMPTY_OBJECT"

    invoke-direct {v0, v1, v7}, Lcom/tapjoy/internal/bw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/bw;->e:Lcom/tapjoy/internal/bw;

    .line 58
    new-instance v0, Lcom/tapjoy/internal/bw;

    const-string v1, "EMPTY_DOCUMENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/bw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/bw;->f:Lcom/tapjoy/internal/bw;

    .line 63
    new-instance v0, Lcom/tapjoy/internal/bw;

    const-string v1, "NONEMPTY_DOCUMENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/bw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/bw;->g:Lcom/tapjoy/internal/bw;

    .line 68
    new-instance v0, Lcom/tapjoy/internal/bw;

    const-string v1, "CLOSED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/bw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/bw;->h:Lcom/tapjoy/internal/bw;

    .line 23
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/tapjoy/internal/bw;

    sget-object v1, Lcom/tapjoy/internal/bw;->a:Lcom/tapjoy/internal/bw;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tapjoy/internal/bw;->b:Lcom/tapjoy/internal/bw;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tapjoy/internal/bw;->c:Lcom/tapjoy/internal/bw;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tapjoy/internal/bw;->d:Lcom/tapjoy/internal/bw;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tapjoy/internal/bw;->e:Lcom/tapjoy/internal/bw;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/tapjoy/internal/bw;->f:Lcom/tapjoy/internal/bw;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tapjoy/internal/bw;->g:Lcom/tapjoy/internal/bw;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tapjoy/internal/bw;->h:Lcom/tapjoy/internal/bw;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tapjoy/internal/bw;->i:[Lcom/tapjoy/internal/bw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/bw;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/tapjoy/internal/bw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/bw;

    return-object v0
.end method

.method public static values()[Lcom/tapjoy/internal/bw;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/tapjoy/internal/bw;->i:[Lcom/tapjoy/internal/bw;

    invoke-virtual {v0}, [Lcom/tapjoy/internal/bw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/internal/bw;

    return-object v0
.end method
