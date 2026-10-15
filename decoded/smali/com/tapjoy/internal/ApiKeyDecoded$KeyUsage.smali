.class public final enum Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ApiKeyDecoded;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyUsage"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;

.field public static final enum RPC_ANALYTICS:Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;

.field public static final enum SDK_ANDROID:Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;


# instance fields
.field public id:B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;

    const-string v1, "SDK_ANDROID"

    invoke-direct {v0, v1, v3, v5}, Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;->SDK_ANDROID:Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;

    .line 22
    new-instance v0, Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;

    const-string v1, "RPC_ANALYTICS"

    const/16 v2, 0x31

    invoke-direct {v0, v1, v4, v2}, Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;->RPC_ANALYTICS:Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;

    .line 20
    new-array v0, v5, [Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;

    sget-object v1, Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;->SDK_ANDROID:Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;->RPC_ANALYTICS:Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;->$VALUES:[Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .param p3, "id"    # B

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput-byte p3, p0, Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;->id:B

    .line 29
    return-void
.end method

.method public static valueOf(B)Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;
    .locals 5
    .param p0, "id"    # B

    .prologue
    .line 33
    invoke-static {}, Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;->values()[Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 34
    iget-byte v4, v0, Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;->id:B

    if-ne v4, p0, :cond_0

    .line 38
    :goto_1
    return-object v0

    .line 33
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;

    return-object v0
.end method

.method public static values()[Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;->$VALUES:[Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;

    invoke-virtual {v0}, [Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;

    return-object v0
.end method
