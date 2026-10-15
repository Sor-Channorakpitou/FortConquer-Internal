.class public final enum Lcom/tapjoy/internal/aj$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcom/tapjoy/internal/aj$a;

.field public static final enum b:Lcom/tapjoy/internal/aj$a;

.field public static final enum c:Lcom/tapjoy/internal/aj$a;

.field public static final enum d:Lcom/tapjoy/internal/aj$a;

.field private static final synthetic e:[Lcom/tapjoy/internal/aj$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/tapjoy/internal/aj$a;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/aj$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/aj$a;->a:Lcom/tapjoy/internal/aj$a;

    .line 10
    new-instance v0, Lcom/tapjoy/internal/aj$a;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/tapjoy/internal/aj$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/aj$a;->b:Lcom/tapjoy/internal/aj$a;

    .line 11
    new-instance v0, Lcom/tapjoy/internal/aj$a;

    const-string v1, "UP"

    invoke-direct {v0, v1, v4}, Lcom/tapjoy/internal/aj$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/aj$a;->c:Lcom/tapjoy/internal/aj$a;

    .line 12
    new-instance v0, Lcom/tapjoy/internal/aj$a;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v5}, Lcom/tapjoy/internal/aj$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tapjoy/internal/aj$a;->d:Lcom/tapjoy/internal/aj$a;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tapjoy/internal/aj$a;

    sget-object v1, Lcom/tapjoy/internal/aj$a;->a:Lcom/tapjoy/internal/aj$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tapjoy/internal/aj$a;->b:Lcom/tapjoy/internal/aj$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tapjoy/internal/aj$a;->c:Lcom/tapjoy/internal/aj$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tapjoy/internal/aj$a;->d:Lcom/tapjoy/internal/aj$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tapjoy/internal/aj$a;->e:[Lcom/tapjoy/internal/aj$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/aj$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/tapjoy/internal/aj$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/aj$a;

    return-object v0
.end method

.method public static values()[Lcom/tapjoy/internal/aj$a;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/tapjoy/internal/aj$a;->e:[Lcom/tapjoy/internal/aj$a;

    invoke-virtual {v0}, [Lcom/tapjoy/internal/aj$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/internal/aj$a;

    return-object v0
.end method
