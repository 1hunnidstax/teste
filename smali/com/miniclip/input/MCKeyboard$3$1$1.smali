.class Lcom/miniclip/input/MCKeyboard$3$1$1;
.super Ljava/lang/Object;
.source "MCKeyboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/input/MCKeyboard$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miniclip/input/MCKeyboard$3$1;


# direct methods
.method constructor <init>(Lcom/miniclip/input/MCKeyboard$3$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miniclip/input/MCKeyboard$3$1;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/miniclip/input/MCKeyboard$3$1$1;->this$1:Lcom/miniclip/input/MCKeyboard$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 144
    sget-boolean v1, Lcom/miniclip/input/MCKeyboard;->mKEYBOARD_OVERRIDE_VISIBILITY:Z

    if-nez v1, :cond_0

    .line 145
    # getter for: Lcom/miniclip/input/MCKeyboard;->mEditText:Landroid/widget/EditText;
    invoke-static {}, Lcom/miniclip/input/MCKeyboard;->access$100()Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 148
    :cond_0
    # getter for: Lcom/miniclip/input/MCKeyboard;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;
    invoke-static {}, Lcom/miniclip/input/MCKeyboard;->access$000()Lcom/miniclip/framework/MiniclipAndroidActivity;

    move-result-object v1

    const-string v2, "input_method"

    .line 149
    invoke-virtual {v1, v2}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 151
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    # getter for: Lcom/miniclip/input/MCKeyboard;->mEditText:Landroid/widget/EditText;
    invoke-static {}, Lcom/miniclip/input/MCKeyboard;->access$100()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 152
    return-void
.end method
