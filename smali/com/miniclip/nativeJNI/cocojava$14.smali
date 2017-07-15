.class Lcom/miniclip/nativeJNI/cocojava$14;
.super Ljava/lang/Object;
.source "cocojava.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/nativeJNI/cocojava;->showDatePickerDialog(IIII)V
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
    .line 903
    iput-object p1, p0, Lcom/miniclip/nativeJNI/cocojava$14;->this$0:Lcom/miniclip/nativeJNI/cocojava;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 906
    iget-object v0, p0, Lcom/miniclip/nativeJNI/cocojava$14;->this$0:Lcom/miniclip/nativeJNI/cocojava;

    sget-object v1, Lcom/miniclip/framework/ThreadingContext;->GlThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v2, Lcom/miniclip/nativeJNI/cocojava$14$1;

    invoke-direct {v2, p0}, Lcom/miniclip/nativeJNI/cocojava$14$1;-><init>(Lcom/miniclip/nativeJNI/cocojava$14;)V

    invoke-virtual {v0, v1, v2}, Lcom/miniclip/nativeJNI/cocojava;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 912
    return-void
.end method
