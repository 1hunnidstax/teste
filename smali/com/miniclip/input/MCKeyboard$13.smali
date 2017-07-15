.class final Lcom/miniclip/input/MCKeyboard$13;
.super Ljava/lang/Object;
.source "MCKeyboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/input/MCKeyboard;->keyboardInput_Hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 347
    # getter for: Lcom/miniclip/input/MCKeyboard;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;
    invoke-static {}, Lcom/miniclip/input/MCKeyboard;->access$000()Lcom/miniclip/framework/MiniclipAndroidActivity;

    move-result-object v1

    const-string v2, "input_method"

    .line 348
    invoke-virtual {v1, v2}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 350
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    # getter for: Lcom/miniclip/input/MCKeyboard;->mEditText:Landroid/widget/EditText;
    invoke-static {}, Lcom/miniclip/input/MCKeyboard;->access$100()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    .line 349
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 351
    return-void
.end method
