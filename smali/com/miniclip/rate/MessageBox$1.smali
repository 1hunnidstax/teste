.class Lcom/miniclip/rate/MessageBox$1;
.super Ljava/lang/Object;
.source "MessageBox.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/rate/MessageBox;->showDialog(ILjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/rate/MessageBox;

.field final synthetic val$cancelable:Z


# direct methods
.method constructor <init>(Lcom/miniclip/rate/MessageBox;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/rate/MessageBox;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/miniclip/rate/MessageBox$1;->this$0:Lcom/miniclip/rate/MessageBox;

    iput-boolean p2, p0, Lcom/miniclip/rate/MessageBox$1;->val$cancelable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 287
    iget-boolean v1, p0, Lcom/miniclip/rate/MessageBox$1;->val$cancelable:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 288
    const-string v1, "key down"

    const-string v2, "KEYCODE_BACK"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v1, p0, Lcom/miniclip/rate/MessageBox$1;->this$0:Lcom/miniclip/rate/MessageBox;

    # getter for: Lcom/miniclip/rate/MessageBox;->mDialogs:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/miniclip/rate/MessageBox;->access$200(Lcom/miniclip/rate/MessageBox;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 290
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/app/Dialog;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 291
    iget-object v2, p0, Lcom/miniclip/rate/MessageBox$1;->this$0:Lcom/miniclip/rate/MessageBox;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/miniclip/rate/MessageBox;->closeDialog(I)V

    .line 292
    const/4 v1, 0x1

    .line 295
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/app/Dialog;>;"
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
