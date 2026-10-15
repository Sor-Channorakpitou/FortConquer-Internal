.class Lcom/tapjoy/internal/eu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/tapjoy/internal/eu;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/eu;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/tapjoy/internal/eu;->a:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/tapjoy/internal/eu;->b:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/tapjoy/internal/eu;->c:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/tapjoy/internal/eu;->d:Ljava/lang/String;

    .line 19
    const/16 v0, 0x2710

    iput v0, p0, Lcom/tapjoy/internal/eu;->e:I

    .line 27
    iput-object p1, p0, Lcom/tapjoy/internal/eu;->a:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/tapjoy/internal/eu;->b:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/tapjoy/internal/eu;->c:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/tapjoy/internal/eu;->d:Ljava/lang/String;

    .line 31
    iput p5, p0, Lcom/tapjoy/internal/eu;->e:I

    .line 32
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 36
    const/4 v2, 0x0

    .line 39
    :try_start_0
    new-instance v1, Ljava/net/Socket;

    iget-object v3, p0, Lcom/tapjoy/internal/eu;->a:Ljava/lang/String;

    const/16 v4, 0x1f90

    invoke-direct {v1, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :try_start_1
    iget v2, p0, Lcom/tapjoy/internal/eu;->e:I

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 43
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 45
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 46
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<handle sig=FF44EE55 session_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tapjoy/internal/eu;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " org_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tapjoy/internal/eu;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " w="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tapjoy/internal/eu;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " />"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 53
    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 55
    const/4 v4, 0x1

    new-array v4, v4, [C

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-char v6, v4, v5

    .line 56
    :goto_0
    const/16 v5, 0xf

    if-ge v0, v5, :cond_0

    .line 58
    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write([C)V

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    :cond_1
    sget-object v0, Lcom/tapjoy/internal/eu;->f:Ljava/lang/String;

    .line 77
    :try_start_2
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 89
    :cond_2
    :goto_1
    return-void

    .line 64
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 66
    :goto_2
    :try_start_3
    const-string v2, "Failed to connect to the fp server"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 75
    sget-object v0, Lcom/tapjoy/internal/eu;->f:Ljava/lang/String;

    .line 77
    if-eqz v1, :cond_2

    .line 82
    :try_start_4
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    .line 68
    :catch_2
    move-exception v0

    move-object v1, v2

    .line 70
    :goto_3
    :try_start_5
    const-string v2, "Failed to read/write to the fp server"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 75
    sget-object v0, Lcom/tapjoy/internal/eu;->f:Ljava/lang/String;

    .line 77
    if-eqz v1, :cond_2

    .line 82
    :try_start_6
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    .line 75
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    sget-object v2, Lcom/tapjoy/internal/eu;->f:Ljava/lang/String;

    .line 77
    if-eqz v1, :cond_3

    .line 82
    :try_start_7
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 89
    :cond_3
    :goto_5
    throw v0

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_5

    .line 75
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 68
    :catch_6
    move-exception v0

    goto :goto_3

    .line 64
    :catch_7
    move-exception v0

    goto :goto_2
.end method
