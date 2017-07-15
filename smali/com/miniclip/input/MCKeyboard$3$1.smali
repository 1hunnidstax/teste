.class Lcom/miniclip/input/MCKeyboard$3$1;
.super Ljava/lang/Object;
.source "MCKeyboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/input/MCKeyboard$3;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/input/MCKeyboard$3;

.field final synthetic val$actionId:I

.field final synthetic val$event:Landroid/view/KeyEvent;


# direct methods
.method constructor <init>(Lcom/miniclip/input/MCKeyboard$3;ILandroid/view/KeyEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/input/MCKeyboard$3;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/miniclip/input/MCKeyboard$3$1;->this$0:Lcom/miniclip/input/MCKeyboard$3;

    iput p2, p0, Lcom/miniclip/input/MCKeyboard$3$1;->val$actionId:I

    iput-object p3, p0, Lcom/miniclip/input/MCKeyboard$3$1;->val$event:Landroid/view/KeyEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 130
    # getter for: Lcom/miniclip/input/MCKeyboard;->mEditText:Landroid/widget/EditText;
    invoke-static {}, Lcom/miniclip/input/MCKeyboard;->access$100()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/miniclip/input/MCKeyboard;->MkeyboardInputActionPressed(Ljava/lang/String;)Z
    invoke-static {v1}, Lcom/miniclip/input/MCKeyboard;->access$400(Ljava/lang/String;)Z

    move-result v0

    .line 131
    .local v0, "shouldClose":Z
    if-nez v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 135
    :cond_0
    iget v1, p0, Lcom/miniclip/input/MCKeyboard$3$1;->val$actionId:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/miniclip/input/MCKeyboard$3$1;->val$actionId:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/miniclip/input/MCKeyboard$3$1;->val$event:Landroid/view/KeyEvent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miniclip/input/MCKeyboard$3$1;->val$event:Landroid/view/KeyEvent;

    .line 137
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_2

    :cond_1
    iget v1, p0, Lcom/miniclip/input/MCKeyboard$3$1;->val$actionId:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 140
    :cond_2
    # getter for: Lcom/miniclip/input/MCKeyboard;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;
    invoke-static {}, Lcom/miniclip/input/MCKeyboard;->access$000()Lcom/miniclip/framework/MiniclipAndroidActivity;

    move-result-object v1

    sget-object v2, Lcom/miniclip/framework/ThreadingContext;->UiThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v3, Lcom/miniclip/input/MCKeyboard$3$1$1;

    invoke-direct {v3, p0}, Lcom/miniclip/input/MCKeyboard$3$1$1;-><init>(Lcom/miniclip/input/MCKeyboard$3$1;)V

    invoke-virtual {v1, v2, v3}, Lcom/miniclip/framework/MiniclipAndroidActivity;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 157
    :cond_3
    # getter for: Lcom/miniclip/input/MCKeyboard;->mEditText:Landroid/widget/EditText;
    invoke-static {}, Lcom/miniclip/input/MCKeyboard;->access$100()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/miniclip/input/MCKeyboard;->MkeyboardInputClosed(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/miniclip/input/MCKeyboard;->access$500(Ljava/lang/String;)V

    goto :goto_0
.end method
