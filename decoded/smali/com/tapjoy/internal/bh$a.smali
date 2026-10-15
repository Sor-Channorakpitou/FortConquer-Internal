.class public final enum Lcom/tapjoy/internal/bh$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/bh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcom/tapjoy/internal/bh$a;

.field public static final enum b:Lcom/tapjoy/internal/bh$a;

.field public static final enum c:Lcom/tapjoy/internal/bh$a;

.field public static final enum d:Lcom/tapjoy/internal/bh$a;

.field private static final synthetic e:[Lcom/tapjoy/internal/bh$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/tapjoy/internal/bh$a;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/bh$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/bh$a;->a:Lcom/tapjoy/internal/bh$a;

    .line 12
    new-instance v0, Lcom/tapjoy/internal/bh$a;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/tapjoy/internal/bh$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/bh$a;->b:Lcom/tapjoy/internal/bh$a;

    .line 13
    new-instance v0, Lcom/tapjoy/internal/bh$a;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Lcom/tapjoy/internal/bh$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/bh$a;->c:Lcom/tapjoy/internal/bh$a;

    .line 14
    new-instance v0, Lcom/tapjoy/internal/bh$a;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lcom/tapjoy/internal/bh$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/bh$a;->d:Lcom/tapjoy/internal/bh$a;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tapjoy/internal/bh$a;

    sget-object v1, Lcom/tapjoy/internal/bh$a;->a:Lcom/tapjoy/internal/bh$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tapjoy/internal/bh$a;->b:Lcom/tapjoy/internal/bh$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tapjoy/internal/bh$a;->c:Lcom/tapjoy/internal/bh$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tapjoy/internal/bh$a;->d:Lcom/tapjoy/internal/bh$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tapjoy/internal/bh$a;->e:[Lcom/tapjoy/internal/bh$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/bh$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/tapjoy/internal/bh$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/bh$a;

    return-object v0
.end method

.method public static values()[Lcom/tapjoy/internal/bh$a;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/tapjoy/internal/bh$a;->e:[Lcom/tapjoy/internal/bh$a;

    invoke-virtual {v0}, [Lcom/tapjoy/internal/bh$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/internal/bh$a;

    return-object v0
.end method
