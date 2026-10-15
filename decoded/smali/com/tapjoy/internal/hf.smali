.class public final enum Lcom/tapjoy/internal/hf;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/tapjoy/internal/hf;

.field public static final enum b:Lcom/tapjoy/internal/hf;

.field private static final synthetic c:[Lcom/tapjoy/internal/hf;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/tapjoy/internal/hf;

    const-string v1, "STRICT"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/hf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/hf;->a:Lcom/tapjoy/internal/hf;

    .line 39
    new-instance v0, Lcom/tapjoy/internal/hf;

    const-string v1, "BROWSER_COMPATIBLE"

    invoke-direct {v0, v1, v3}, Lcom/tapjoy/internal/hf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/hf;->b:Lcom/tapjoy/internal/hf;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tapjoy/internal/hf;

    sget-object v1, Lcom/tapjoy/internal/hf;->a:Lcom/tapjoy/internal/hf;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tapjoy/internal/hf;->b:Lcom/tapjoy/internal/hf;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tapjoy/internal/hf;->c:[Lcom/tapjoy/internal/hf;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/hf;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lcom/tapjoy/internal/hf;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/hf;

    return-object v0
.end method

.method public static final values()[Lcom/tapjoy/internal/hf;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/tapjoy/internal/hf;->c:[Lcom/tapjoy/internal/hf;

    invoke-virtual {v0}, [Lcom/tapjoy/internal/hf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/internal/hf;

    return-object v0
.end method
