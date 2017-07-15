.class Lcom/miniclip/network/HttpConnection$1;
.super Ljava/lang/Object;
.source "HttpConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/network/HttpConnection;->start()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/network/HttpConnection;


# direct methods
.method constructor <init>(Lcom/miniclip/network/HttpConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/network/HttpConnection;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/miniclip/network/HttpConnection$1;->this$0:Lcom/miniclip/network/HttpConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 255
    iget-object v0, p0, Lcom/miniclip/network/HttpConnection$1;->this$0:Lcom/miniclip/network/HttpConnection;

    new-instance v1, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;

    iget-object v2, p0, Lcom/miniclip/network/HttpConnection$1;->this$0:Lcom/miniclip/network/HttpConnection;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;-><init>(Lcom/miniclip/network/HttpConnection;Lcom/miniclip/network/HttpConnection$1;)V

    # setter for: Lcom/miniclip/network/HttpConnection;->connectionTask:Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;
    invoke-static {v0, v1}, Lcom/miniclip/network/HttpConnection;->access$202(Lcom/miniclip/network/HttpConnection;Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;)Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;

    .line 256
    iget-object v0, p0, Lcom/miniclip/network/HttpConnection$1;->this$0:Lcom/miniclip/network/HttpConnection;

    # getter for: Lcom/miniclip/network/HttpConnection;->connectionTask:Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;
    invoke-static {v0}, Lcom/miniclip/network/HttpConnection;->access$200(Lcom/miniclip/network/HttpConnection;)Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;

    move-result-object v0

    iget-object v1, p0, Lcom/miniclip/network/HttpConnection$1;->this$0:Lcom/miniclip/network/HttpConnection;

    # setter for: Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->owner:Lcom/miniclip/network/HttpConnection;
    invoke-static {v0, v1}, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->access$402(Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;Lcom/miniclip/network/HttpConnection;)Lcom/miniclip/network/HttpConnection;

    .line 257
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/miniclip/network/HttpConnection$1;->this$0:Lcom/miniclip/network/HttpConnection;

    # getter for: Lcom/miniclip/network/HttpConnection;->connectionTask:Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;
    invoke-static {v0}, Lcom/miniclip/network/HttpConnection;->access$200(Lcom/miniclip/network/HttpConnection;)Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;

    move-result-object v0

    # getter for: Lcom/miniclip/network/HttpConnection;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;
    invoke-static {}, Lcom/miniclip/network/HttpConnection;->access$500()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    iget-object v3, p0, Lcom/miniclip/network/HttpConnection$1;->this$0:Lcom/miniclip/network/HttpConnection;

    iget-object v3, v3, Lcom/miniclip/network/HttpConnection;->urlString:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 262
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/miniclip/network/HttpConnection$1;->this$0:Lcom/miniclip/network/HttpConnection;

    # getter for: Lcom/miniclip/network/HttpConnection;->connectionTask:Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;
    invoke-static {v0}, Lcom/miniclip/network/HttpConnection;->access$200(Lcom/miniclip/network/HttpConnection;)Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    iget-object v2, p0, Lcom/miniclip/network/HttpConnection$1;->this$0:Lcom/miniclip/network/HttpConnection;

    iget-object v2, v2, Lcom/miniclip/network/HttpConnection;->urlString:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
