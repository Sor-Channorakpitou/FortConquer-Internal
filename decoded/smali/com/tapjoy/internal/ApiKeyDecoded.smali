.class public Lcom/tapjoy/internal/ApiKeyDecoded;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .param p1, "apiKey"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x29

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given API key was malformed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x45

    if-eq v0, v1, :cond_1

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given API key was invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    const/16 v0, 0x8

    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 85
    array-length v1, v0

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_2

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given API key was malformed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The given API key was malformed."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 91
    :cond_2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 92
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 95
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    .line 96
    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    .line 97
    invoke-virtual {v3, v0, v6, v4}, Ljava/util/zip/CRC32;->update([BII)V

    .line 98
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    long-to-int v0, v4

    .line 99
    if-eq v2, v0, :cond_3

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given API key was invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_3
    iput-object p1, p0, Lcom/tapjoy/internal/ApiKeyDecoded;->a:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/util/UUID;

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/ApiKeyDecoded;->b:Ljava/lang/String;

    .line 106
    const/16 v0, 0x18

    const/16 v2, 0x2c

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/ApiKeyDecoded;->c:Ljava/lang/String;

    .line 108
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;->valueOf(B)Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/ApiKeyDecoded;->d:Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;

    .line 109
    return-void
.end method

.method public static get5RocksAppId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "uuid"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x1e

    const/16 v3, 0xd

    const/4 v2, 0x0

    .line 137
    const-string v0, "-8000-8000-"

    const/16 v1, 0xb

    invoke-virtual {p0, v3, v0, v2, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x8

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given UUID did not come from 5Rocks."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 113
    instance-of v0, p1, Lcom/tapjoy/internal/ApiKeyDecoded;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/tapjoy/internal/ApiKeyDecoded;->a:Ljava/lang/String;

    check-cast p1, Lcom/tapjoy/internal/ApiKeyDecoded;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/tapjoy/internal/ApiKeyDecoded;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 116
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/tapjoy/internal/ApiKeyDecoded;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyUsage()Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/tapjoy/internal/ApiKeyDecoded;->d:Lcom/tapjoy/internal/ApiKeyDecoded$KeyUsage;

    return-object v0
.end method

.method public getSecretKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/tapjoy/internal/ApiKeyDecoded;->c:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/tapjoy/internal/ApiKeyDecoded;->a:Ljava/lang/String;

    return-object v0
.end method
