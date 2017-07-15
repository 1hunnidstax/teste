.class Lcom/miniclip/nativeJNI/cocojava$14$1;
.super Ljava/lang/Object;
.source "cocojava.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/nativeJNI/cocojava$14;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miniclip/nativeJNI/cocojava$14;


# direct methods
.method constructor <init>(Lcom/miniclip/nativeJNI/cocojava$14;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miniclip/nativeJNI/cocojava$14;

    .prologue
    .line 906
    iput-object p1, p0, Lcom/miniclip/nativeJNI/cocojava$14$1;->this$1:Lcom/miniclip/nativeJNI/cocojava$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 909
    invoke-static {}, Lcom/miniclip/nativeJNI/CocoJNI;->MdatePickerClosed()V

    .line 910
    return-void
.end method
