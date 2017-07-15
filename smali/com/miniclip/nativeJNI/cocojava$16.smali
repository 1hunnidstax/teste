.class final Lcom/miniclip/nativeJNI/cocojava$16;
.super Ljava/lang/Object;
.source "cocojava.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/nativeJNI/cocojava;->showDatePickerDialog_JNI(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$day:I

.field final synthetic val$month:I

.field final synthetic val$theme:I

.field final synthetic val$year:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0

    .prologue
    .line 926
    iput p1, p0, Lcom/miniclip/nativeJNI/cocojava$16;->val$year:I

    iput p2, p0, Lcom/miniclip/nativeJNI/cocojava$16;->val$month:I

    iput p3, p0, Lcom/miniclip/nativeJNI/cocojava$16;->val$day:I

    iput p4, p0, Lcom/miniclip/nativeJNI/cocojava$16;->val$theme:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 928
    sget-object v0, Lcom/miniclip/nativeJNI/cocojava;->mContext:Lcom/miniclip/framework/MiniclipAndroidActivity;

    check-cast v0, Lcom/miniclip/nativeJNI/cocojava;

    iget v1, p0, Lcom/miniclip/nativeJNI/cocojava$16;->val$year:I

    iget v2, p0, Lcom/miniclip/nativeJNI/cocojava$16;->val$month:I

    iget v3, p0, Lcom/miniclip/nativeJNI/cocojava$16;->val$day:I

    iget v4, p0, Lcom/miniclip/nativeJNI/cocojava$16;->val$theme:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miniclip/nativeJNI/cocojava;->showDatePickerDialog(IIII)V

    .line 929
    return-void
.end method
