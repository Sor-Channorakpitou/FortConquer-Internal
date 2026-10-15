.class public final enum Lcom/tapjoy/internal/fc$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation


# static fields
.field public static final enum a:Lcom/tapjoy/internal/fc$c;

.field public static final enum b:Lcom/tapjoy/internal/fc$c;

.field public static final enum c:Lcom/tapjoy/internal/fc$c;

.field public static final enum d:Lcom/tapjoy/internal/fc$c;

.field public static final enum e:Lcom/tapjoy/internal/fc$c;

.field public static final enum f:Lcom/tapjoy/internal/fc$c;

.field public static final enum g:Lcom/tapjoy/internal/fc$c;

.field public static final enum h:Lcom/tapjoy/internal/fc$c;

.field public static final enum i:Lcom/tapjoy/internal/fc$c;

.field public static final enum j:Lcom/tapjoy/internal/fc$c;

.field public static final enum k:Lcom/tapjoy/internal/fc$c;

.field private static final synthetic n:[Lcom/tapjoy/internal/fc$c;


# instance fields
.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v0, Lcom/tapjoy/internal/fc$c;

    const-string v1, "THM_NotYet"

    invoke-direct {v0, v1, v3}, Lcom/tapjoy/internal/fc$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/fc$c;->a:Lcom/tapjoy/internal/fc$c;

    .line 36
    new-instance v0, Lcom/tapjoy/internal/fc$c;

    const-string v1, "THM_OK"

    invoke-direct {v0, v1, v4}, Lcom/tapjoy/internal/fc$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/fc$c;->b:Lcom/tapjoy/internal/fc$c;

    .line 40
    new-instance v0, Lcom/tapjoy/internal/fc$c;

    const-string v1, "THM_Connection_Error"

    invoke-direct {v0, v1, v5}, Lcom/tapjoy/internal/fc$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/fc$c;->c:Lcom/tapjoy/internal/fc$c;

    .line 44
    new-instance v0, Lcom/tapjoy/internal/fc$c;

    const-string v1, "THM_HostNotFound_Error"

    invoke-direct {v0, v1, v6}, Lcom/tapjoy/internal/fc$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/fc$c;->d:Lcom/tapjoy/internal/fc$c;

    .line 48
    new-instance v0, Lcom/tapjoy/internal/fc$c;

    const-string v1, "THM_NetworkTimeout_Error"

    invoke-direct {v0, v1, v7}, Lcom/tapjoy/internal/fc$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/fc$c;->e:Lcom/tapjoy/internal/fc$c;

    .line 52
    new-instance v0, Lcom/tapjoy/internal/fc$c;

    const-string v1, "THM_Internal_Error"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/fc$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/fc$c;->f:Lcom/tapjoy/internal/fc$c;

    .line 56
    new-instance v0, Lcom/tapjoy/internal/fc$c;

    const-string v1, "THM_HostVerification_Error"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/fc$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/fc$c;->g:Lcom/tapjoy/internal/fc$c;

    .line 60
    new-instance v0, Lcom/tapjoy/internal/fc$c;

    const-string v1, "THM_Interrupted_Error"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/fc$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/fc$c;->h:Lcom/tapjoy/internal/fc$c;

    .line 64
    new-instance v0, Lcom/tapjoy/internal/fc$c;

    const-string v1, "THM_InvalidOrgID"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/fc$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/fc$c;->i:Lcom/tapjoy/internal/fc$c;

    .line 68
    new-instance v0, Lcom/tapjoy/internal/fc$c;

    const-string v1, "THM_ConfigurationError"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/fc$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/fc$c;->j:Lcom/tapjoy/internal/fc$c;

    .line 72
    new-instance v0, Lcom/tapjoy/internal/fc$c;

    const-string v1, "THM_PartialProfile"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/fc$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/fc$c;->k:Lcom/tapjoy/internal/fc$c;

    .line 27
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/tapjoy/internal/fc$c;

    sget-object v1, Lcom/tapjoy/internal/fc$c;->a:Lcom/tapjoy/internal/fc$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tapjoy/internal/fc$c;->b:Lcom/tapjoy/internal/fc$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tapjoy/internal/fc$c;->c:Lcom/tapjoy/internal/fc$c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tapjoy/internal/fc$c;->d:Lcom/tapjoy/internal/fc$c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tapjoy/internal/fc$c;->e:Lcom/tapjoy/internal/fc$c;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/tapjoy/internal/fc$c;->f:Lcom/tapjoy/internal/fc$c;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tapjoy/internal/fc$c;->g:Lcom/tapjoy/internal/fc$c;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tapjoy/internal/fc$c;->h:Lcom/tapjoy/internal/fc$c;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/tapjoy/internal/fc$c;->i:Lcom/tapjoy/internal/fc$c;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/tapjoy/internal/fc$c;->j:Lcom/tapjoy/internal/fc$c;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/tapjoy/internal/fc$c;->k:Lcom/tapjoy/internal/fc$c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tapjoy/internal/fc$c;->n:[Lcom/tapjoy/internal/fc$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    invoke-virtual {p0}, Lcom/tapjoy/internal/fc$c;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/em;->valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/em;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/tapjoy/internal/em;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/fc$c;->l:Ljava/lang/String;

    .line 81
    invoke-virtual {v0}, Lcom/tapjoy/internal/em;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fc$c;->m:Ljava/lang/String;

    .line 82
    return-void
.end method

.method static a(Lcom/tapjoy/internal/em;)Lcom/tapjoy/internal/fc$c;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/tapjoy/internal/em;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/fc$c;->valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/fc$c;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/fc$c;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/tapjoy/internal/fc$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/fc$c;

    return-object v0
.end method

.method public static values()[Lcom/tapjoy/internal/fc$c;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/tapjoy/internal/fc$c;->n:[Lcom/tapjoy/internal/fc$c;

    invoke-virtual {v0}, [Lcom/tapjoy/internal/fc$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/internal/fc$c;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/tapjoy/internal/fc$c;->m:Ljava/lang/String;

    return-object v0
.end method

.method final b()Lcom/tapjoy/internal/em;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/tapjoy/internal/fc$c;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/em;->valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/em;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/tapjoy/internal/fc$c;->l:Ljava/lang/String;

    return-object v0
.end method
