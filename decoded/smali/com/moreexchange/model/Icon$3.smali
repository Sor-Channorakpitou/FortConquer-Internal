.class Lcom/moreexchange/model/Icon$3;
.super Lcom/loopj/android/http/BinaryHttpResponseHandler;
.source "Icon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moreexchange/model/Icon;->downloadIcon(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moreexchange/model/Icon;

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/moreexchange/model/Icon;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/moreexchange/model/Icon$3;->this$0:Lcom/moreexchange/model/Icon;

    iput-object p2, p0, Lcom/moreexchange/model/Icon$3;->val$handler:Landroid/os/Handler;

    .line 151
    invoke-direct {p0}, Lcom/loopj/android/http/BinaryHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;[B)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "binaryData"    # [B

    .prologue
    .line 175
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 176
    iget-object v0, p0, Lcom/moreexchange/model/Icon$3;->this$0:Lcom/moreexchange/model/Icon;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/moreexchange/model/Icon;->access$0(Lcom/moreexchange/model/Icon;Z)V

    .line 177
    return-void
.end method

.method public onSuccess([B)V
    .locals 4
    .param p1, "fileData"    # [B

    .prologue
    const/4 v3, 0x0

    .line 154
    if-nez p1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/moreexchange/model/Icon$3;->this$0:Lcom/moreexchange/model/Icon;

    invoke-static {v1, v3}, Lcom/moreexchange/model/Icon;->access$0(Lcom/moreexchange/model/Icon;Z)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    array-length v1, p1

    invoke-static {p1, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 161
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 162
    iget-object v1, p0, Lcom/moreexchange/model/Icon$3;->this$0:Lcom/moreexchange/model/Icon;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/moreexchange/model/Icon;->access$1(Lcom/moreexchange/model/Icon;Ljava/lang/ref/SoftReference;)V

    .line 163
    iget-object v1, p0, Lcom/moreexchange/model/Icon$3;->this$0:Lcom/moreexchange/model/Icon;

    invoke-static {v1, v0}, Lcom/moreexchange/model/Icon;->access$2(Lcom/moreexchange/model/Icon;Landroid/graphics/Bitmap;)Z

    .line 166
    :cond_2
    iget-object v1, p0, Lcom/moreexchange/model/Icon$3;->this$0:Lcom/moreexchange/model/Icon;

    invoke-static {v1, v3}, Lcom/moreexchange/model/Icon;->access$0(Lcom/moreexchange/model/Icon;Z)V

    .line 168
    iget-object v1, p0, Lcom/moreexchange/model/Icon$3;->val$handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/moreexchange/model/Icon$3;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/moreexchange/model/Icon$3;->val$handler:Landroid/os/Handler;

    const/16 v3, 0x1001

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
