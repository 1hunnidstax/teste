.class Lcom/miniclip/nativeJNI/cocojava$6;
.super Ljava/lang/Object;
.source "cocojava.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/nativeJNI/cocojava;->showDialog(ILjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/nativeJNI/cocojava;

.field final synthetic val$cancelable:Z


# direct methods
.method constructor <init>(Lcom/miniclip/nativeJNI/cocojava;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/nativeJNI/cocojava;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/miniclip/nativeJNI/cocojava$6;->this$0:Lcom/miniclip/nativeJNI/cocojava;

    iput-boolean p2, p0, Lcom/miniclip/nativeJNI/cocojava$6;->val$cancelable:Z

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
    .line 350
    iget-boolean v1, p0, Lcom/miniclip/nativeJNI/cocojava$6;->val$cancelable:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 351
    const-string v1, "key down"

    const-string v2, "KEYCODE_BACK"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v1, p0, Lcom/miniclip/nativeJNI/cocojava$6;->this$0:Lcom/miniclip/nativeJNI/cocojava;

    # getter for: Lcom/miniclip/nativeJNI/cocojava;->mDialogs:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/miniclip/nativeJNI/cocojava;->access$200(Lcom/miniclip/nativeJNI/cocojava;)Ljava/util/HashMap;

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

    .line 353
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/app/Dialog;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 354
    iget-object v2, p0, Lcom/miniclip/nativeJNI/cocojava$6;->this$0:Lcom/miniclip/nativeJNI/cocojava;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/miniclip/nativeJNI/cocojava;->closeDialog(I)V

    .line 355
    const/4 v1, 0x1

    .line 358
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/app/Dialog;>;"
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
