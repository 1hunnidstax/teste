.class Lcom/miniclip/nativeJNI/cocojava$5;
.super Landroid/os/Handler;
.source "cocojava.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/nativeJNI/cocojava;->firstRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/nativeJNI/cocojava;


# direct methods
.method constructor <init>(Lcom/miniclip/nativeJNI/cocojava;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/nativeJNI/cocojava;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/miniclip/nativeJNI/cocojava$5;->this$0:Lcom/miniclip/nativeJNI/cocojava;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 247
    const/4 v6, 0x0

    .line 249
    .local v6, "dm":Lcom/miniclip/nativeJNI/DialogMessage;
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 273
    :goto_0
    return-void

    .line 251
    :pswitch_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v6    # "dm":Lcom/miniclip/nativeJNI/DialogMessage;
    check-cast v6, Lcom/miniclip/nativeJNI/DialogMessage;

    .line 252
    .restart local v6    # "dm":Lcom/miniclip/nativeJNI/DialogMessage;
    iget-object v0, p0, Lcom/miniclip/nativeJNI/cocojava$5;->this$0:Lcom/miniclip/nativeJNI/cocojava;

    iget v1, v6, Lcom/miniclip/nativeJNI/DialogMessage;->msgId:I

    iget-object v2, v6, Lcom/miniclip/nativeJNI/DialogMessage;->title:Ljava/lang/String;

    iget-object v3, v6, Lcom/miniclip/nativeJNI/DialogMessage;->message:Ljava/lang/String;

    iget-boolean v4, v6, Lcom/miniclip/nativeJNI/DialogMessage;->cancelable:Z

    iget-object v5, v6, Lcom/miniclip/nativeJNI/DialogMessage;->buttonTitles:[Ljava/lang/String;

    # invokes: Lcom/miniclip/nativeJNI/cocojava;->showDialog(ILjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/miniclip/nativeJNI/cocojava;->access$000(Lcom/miniclip/nativeJNI/cocojava;ILjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :pswitch_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v6    # "dm":Lcom/miniclip/nativeJNI/DialogMessage;
    check-cast v6, Lcom/miniclip/nativeJNI/DialogMessage;

    .line 257
    .restart local v6    # "dm":Lcom/miniclip/nativeJNI/DialogMessage;
    iget-object v0, p0, Lcom/miniclip/nativeJNI/cocojava$5;->this$0:Lcom/miniclip/nativeJNI/cocojava;

    iget v1, v6, Lcom/miniclip/nativeJNI/DialogMessage;->msgId:I

    invoke-virtual {v0, v1}, Lcom/miniclip/nativeJNI/cocojava;->hideDialog(I)V

    goto :goto_0

    .line 261
    :pswitch_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v6    # "dm":Lcom/miniclip/nativeJNI/DialogMessage;
    check-cast v6, Lcom/miniclip/nativeJNI/DialogMessage;

    .line 262
    .restart local v6    # "dm":Lcom/miniclip/nativeJNI/DialogMessage;
    iget-object v0, p0, Lcom/miniclip/nativeJNI/cocojava$5;->this$0:Lcom/miniclip/nativeJNI/cocojava;

    iget v1, v6, Lcom/miniclip/nativeJNI/DialogMessage;->msgId:I

    invoke-virtual {v0, v1}, Lcom/miniclip/nativeJNI/cocojava;->closeDialog(I)V

    goto :goto_0

    .line 266
    :pswitch_3
    iget-object v1, p0, Lcom/miniclip/nativeJNI/cocojava$5;->this$0:Lcom/miniclip/nativeJNI/cocojava;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/miniclip/nativeJNI/cocojava;->openURL(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/miniclip/nativeJNI/cocojava;->access$100(Lcom/miniclip/nativeJNI/cocojava;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :pswitch_4
    iget-object v0, p0, Lcom/miniclip/nativeJNI/cocojava$5;->this$0:Lcom/miniclip/nativeJNI/cocojava;

    invoke-virtual {v0}, Lcom/miniclip/nativeJNI/cocojava;->finish()V

    goto :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
