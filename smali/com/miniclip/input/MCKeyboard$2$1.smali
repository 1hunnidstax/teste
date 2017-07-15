.class Lcom/miniclip/input/MCKeyboard$2$1;
.super Ljava/lang/Object;
.source "MCKeyboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/input/MCKeyboard$2;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/input/MCKeyboard$2;


# direct methods
.method constructor <init>(Lcom/miniclip/input/MCKeyboard$2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/input/MCKeyboard$2;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/miniclip/input/MCKeyboard$2$1;->this$0:Lcom/miniclip/input/MCKeyboard$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 110
    # getter for: Lcom/miniclip/input/MCKeyboard;->mEditText:Landroid/widget/EditText;
    invoke-static {}, Lcom/miniclip/input/MCKeyboard;->access$100()Landroid/widget/EditText;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    # invokes: Lcom/miniclip/input/MCKeyboard;->MkeyboardInputResponse(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/miniclip/input/MCKeyboard;->access$300(Ljava/lang/String;)V

    .line 112
    return-void
.end method
