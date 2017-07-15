.class Lcom/miniclip/rate/MessageBox$MyHandler;
.super Landroid/os/Handler;
.source "MessageBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miniclip/rate/MessageBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field private final _messageBox:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miniclip/rate/MessageBox;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miniclip/rate/MessageBox;


# direct methods
.method public constructor <init>(Lcom/miniclip/rate/MessageBox;Lcom/miniclip/rate/MessageBox;)V
    .locals 1
    .param p2, "msgBox"    # Lcom/miniclip/rate/MessageBox;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/miniclip/rate/MessageBox$MyHandler;->this$0:Lcom/miniclip/rate/MessageBox;

    .line 209
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 210
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miniclip/rate/MessageBox$MyHandler;->_messageBox:Ljava/lang/ref/WeakReference;

    .line 211
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/miniclip/rate/MessageBox$MyHandler;->_messageBox:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 216
    const-string v0, "MessageBox"

    const-string v1, "MessageBox: weakReference object is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :goto_0
    return-void

    .line 220
    :cond_0
    const/4 v6, 0x0

    .line 222
    .local v6, "dm":Lcom/miniclip/rate/DialogMessage;
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 224
    :pswitch_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v6    # "dm":Lcom/miniclip/rate/DialogMessage;
    check-cast v6, Lcom/miniclip/rate/DialogMessage;

    .line 225
    .restart local v6    # "dm":Lcom/miniclip/rate/DialogMessage;
    iget-object v0, p0, Lcom/miniclip/rate/MessageBox$MyHandler;->_messageBox:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miniclip/rate/MessageBox;

    iget v1, v6, Lcom/miniclip/rate/DialogMessage;->msgId:I

    iget-object v2, v6, Lcom/miniclip/rate/DialogMessage;->title:Ljava/lang/String;

    iget-object v3, v6, Lcom/miniclip/rate/DialogMessage;->message:Ljava/lang/String;

    iget-boolean v4, v6, Lcom/miniclip/rate/DialogMessage;->cancelable:Z

    iget-object v5, v6, Lcom/miniclip/rate/DialogMessage;->buttonTitles:[Ljava/lang/String;

    # invokes: Lcom/miniclip/rate/MessageBox;->showDialog(ILjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/miniclip/rate/MessageBox;->access$000(Lcom/miniclip/rate/MessageBox;ILjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :pswitch_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v6    # "dm":Lcom/miniclip/rate/DialogMessage;
    check-cast v6, Lcom/miniclip/rate/DialogMessage;

    .line 230
    .restart local v6    # "dm":Lcom/miniclip/rate/DialogMessage;
    iget-object v0, p0, Lcom/miniclip/rate/MessageBox$MyHandler;->_messageBox:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miniclip/rate/MessageBox;

    iget v1, v6, Lcom/miniclip/rate/DialogMessage;->msgId:I

    invoke-virtual {v0, v1}, Lcom/miniclip/rate/MessageBox;->hideDialog(I)V

    goto :goto_0

    .line 234
    :pswitch_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v6    # "dm":Lcom/miniclip/rate/DialogMessage;
    check-cast v6, Lcom/miniclip/rate/DialogMessage;

    .line 235
    .restart local v6    # "dm":Lcom/miniclip/rate/DialogMessage;
    iget-object v0, p0, Lcom/miniclip/rate/MessageBox$MyHandler;->_messageBox:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miniclip/rate/MessageBox;

    iget v1, v6, Lcom/miniclip/rate/DialogMessage;->msgId:I

    invoke-virtual {v0, v1}, Lcom/miniclip/rate/MessageBox;->closeDialog(I)V

    goto :goto_0

    .line 239
    :pswitch_3
    iget-object v1, p0, Lcom/miniclip/rate/MessageBox$MyHandler;->this$0:Lcom/miniclip/rate/MessageBox;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/miniclip/rate/MessageBox;->openAppMarketPageOnPlayStoreOrBrowser(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/miniclip/rate/MessageBox;->access$100(Lcom/miniclip/rate/MessageBox;Ljava/lang/String;)V

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
