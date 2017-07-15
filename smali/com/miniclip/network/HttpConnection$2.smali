.class Lcom/miniclip/network/HttpConnection$2;
.super Ljava/lang/Object;
.source "HttpConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/network/HttpConnection;->cancel()Z
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
    .line 274
    iput-object p1, p0, Lcom/miniclip/network/HttpConnection$2;->this$0:Lcom/miniclip/network/HttpConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/miniclip/network/HttpConnection$2;->this$0:Lcom/miniclip/network/HttpConnection;

    # getter for: Lcom/miniclip/network/HttpConnection;->connectionTask:Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;
    invoke-static {v0}, Lcom/miniclip/network/HttpConnection;->access$200(Lcom/miniclip/network/HttpConnection;)Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;

    move-result-object v0

    if-nez v0, :cond_0

    .line 278
    const-string v0, "HttpConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to cancel connection with ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miniclip/network/HttpConnection$2;->this$0:Lcom/miniclip/network/HttpConnection;

    iget-object v2, v2, Lcom/miniclip/network/HttpConnection;->connectionID:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": connection not started."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/miniclip/network/HttpConnection$2;->this$0:Lcom/miniclip/network/HttpConnection;

    # getter for: Lcom/miniclip/network/HttpConnection;->connectionTask:Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;
    invoke-static {v0}, Lcom/miniclip/network/HttpConnection;->access$200(Lcom/miniclip/network/HttpConnection;)Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;->cancel(Z)Z

    .line 282
    invoke-static {}, Lcom/miniclip/network/HttpConnectionsManager;->sharedInstance()Lcom/miniclip/network/HttpConnectionsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miniclip/network/HttpConnection$2;->this$0:Lcom/miniclip/network/HttpConnection;

    iget-object v1, v1, Lcom/miniclip/network/HttpConnection;->connectionID:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/miniclip/network/HttpConnectionsManager;->removeConnection(Ljava/lang/Integer;)V

    goto :goto_0
.end method
