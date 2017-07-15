.class public Lcom/miniclip/ui/AlertPopup;
.super Ljava/lang/Object;
.source "AlertPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private activityListener:Lcom/miniclip/framework/AbstractActivityListener;

.field private mButtonTitles:[Ljava/lang/String;

.field private mCancelable:Z

.field private mDialog:Landroid/app/AlertDialog;

.field private mMessage:Ljava/lang/String;

.field private mNativeDialogId:J

.field private mNativeObjectReference:Ljava/lang/Number;

.field private mShowActivityIndicator:Z

.field private mTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(JJ)V
    .locals 1
    .param p1, "alertPopupObjectReference"    # J
    .param p3, "nativeDialogId"    # J

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/miniclip/ui/AlertPopup$1;

    invoke-direct {v0, p0}, Lcom/miniclip/ui/AlertPopup$1;-><init>(Lcom/miniclip/ui/AlertPopup;)V

    iput-object v0, p0, Lcom/miniclip/ui/AlertPopup;->activityListener:Lcom/miniclip/framework/AbstractActivityListener;

    .line 40
    iget-object v0, p0, Lcom/miniclip/ui/AlertPopup;->activityListener:Lcom/miniclip/framework/AbstractActivityListener;

    invoke-static {v0}, Lcom/miniclip/framework/Miniclip;->addListener(Lcom/miniclip/framework/ActivityListener;)Z

    .line 41
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/miniclip/ui/AlertPopup;->mNativeObjectReference:Ljava/lang/Number;

    .line 42
    iput-wide p3, p0, Lcom/miniclip/ui/AlertPopup;->mNativeDialogId:J

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/miniclip/ui/AlertPopup;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/ui/AlertPopup;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miniclip/ui/AlertPopup;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 18
    invoke-static {}, Lcom/miniclip/ui/AlertPopup;->nativeClearRunningPopups()V

    return-void
.end method

.method static synthetic access$200(Lcom/miniclip/ui/AlertPopup;)V
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/ui/AlertPopup;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/miniclip/ui/AlertPopup;->showDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/miniclip/ui/AlertPopup;)V
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/ui/AlertPopup;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/miniclip/ui/AlertPopup;->closeDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/miniclip/ui/AlertPopup;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/ui/AlertPopup;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/miniclip/ui/AlertPopup;->mCancelable:Z

    return v0
.end method

.method static synthetic access$500(Lcom/miniclip/ui/AlertPopup;)Ljava/lang/Number;
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/ui/AlertPopup;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/miniclip/ui/AlertPopup;->mNativeObjectReference:Ljava/lang/Number;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miniclip/ui/AlertPopup;J)V
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/ui/AlertPopup;
    .param p1, "x1"    # J

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/miniclip/ui/AlertPopup;->nativePopupDidAppear(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/miniclip/ui/AlertPopup;)J
    .locals 2
    .param p0, "x0"    # Lcom/miniclip/ui/AlertPopup;

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/miniclip/ui/AlertPopup;->mNativeDialogId:J

    return-wide v0
.end method

.method private closeDialog()V
    .locals 4

    .prologue
    .line 194
    const-string v0, "AlertPopup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Closing AlertDialog with id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/miniclip/ui/AlertPopup;->mNativeDialogId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/miniclip/ui/AlertPopup;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miniclip/ui/AlertPopup;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    :cond_0
    const-string v0, "AlertPopup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to dismiss dialog in invalid state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/miniclip/ui/AlertPopup;->mNativeDialogId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/miniclip/ui/AlertPopup;->mNativeObjectReference:Ljava/lang/Number;

    if-nez v0, :cond_2

    .line 202
    const-string v0, "AlertPopup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dismissing Dialog without native object associated id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/miniclip/ui/AlertPopup;->mNativeDialogId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/miniclip/ui/AlertPopup;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/miniclip/ui/AlertPopup;->mNativeObjectReference:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/miniclip/ui/AlertPopup;->nativePopupWillDisappear(J)V

    .line 208
    iget-object v0, p0, Lcom/miniclip/ui/AlertPopup;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 209
    iget-object v0, p0, Lcom/miniclip/ui/AlertPopup;->mNativeObjectReference:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/miniclip/ui/AlertPopup;->nativePopupDidDisappear(J)V

    goto :goto_0
.end method

.method private native handleButtonPressNative(JI)V
.end method

.method private static native nativeClearRunningPopups()V
.end method

.method private native nativePopupDidAppear(J)V
.end method

.method private native nativePopupDidDisappear(J)V
.end method

.method private native nativePopupWillAppear(J)V
.end method

.method private native nativePopupWillDisappear(J)V
.end method

.method private showDialog()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/16 v10, 0x22

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 104
    const-string v3, "AlertPopup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Creating a dialog for message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/miniclip/ui/AlertPopup;->mNativeDialogId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " withTitle:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/miniclip/ui/AlertPopup;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " withMessage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/miniclip/ui/AlertPopup;->mMessage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/miniclip/ui/AlertPopup;->mButtonTitles:[Ljava/lang/String;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " buttons."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v3, p0, Lcom/miniclip/ui/AlertPopup;->mDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    .line 191
    :goto_0
    return-void

    .line 110
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/miniclip/framework/Miniclip;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 113
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/miniclip/ui/AlertPopup;->mTitle:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/miniclip/ui/AlertPopup;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 114
    :cond_1
    iget-object v3, p0, Lcom/miniclip/ui/AlertPopup;->mButtonTitles:[Ljava/lang/String;

    array-length v3, v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_2

    iget-object v3, p0, Lcom/miniclip/ui/AlertPopup;->mMessage:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 115
    iget-object v3, p0, Lcom/miniclip/ui/AlertPopup;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 117
    :cond_2
    iget-object v3, p0, Lcom/miniclip/ui/AlertPopup;->mButtonTitles:[Ljava/lang/String;

    array-length v3, v3

    if-ne v3, v9, :cond_5

    .line 118
    iget-object v3, p0, Lcom/miniclip/ui/AlertPopup;->mButtonTitles:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 148
    :cond_3
    :goto_1
    iget-boolean v3, p0, Lcom/miniclip/ui/AlertPopup;->mShowActivityIndicator:Z

    if-eqz v3, :cond_4

    .line 149
    invoke-static {}, Lcom/miniclip/framework/Miniclip;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/miniclip/prime/R$layout;->progress_view:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 150
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 152
    .end local v2    # "v":Landroid/view/View;
    :cond_4
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/miniclip/ui/AlertPopup;->mDialog:Landroid/app/AlertDialog;

    .line 154
    iget-object v3, p0, Lcom/miniclip/ui/AlertPopup;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 155
    iget-object v3, p0, Lcom/miniclip/ui/AlertPopup;->mDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/miniclip/ui/AlertPopup$4;

    invoke-direct {v4, p0}, Lcom/miniclip/ui/AlertPopup$4;-><init>(Lcom/miniclip/ui/AlertPopup;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 165
    iget-object v3, p0, Lcom/miniclip/ui/AlertPopup;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 168
    iget-object v3, p0, Lcom/miniclip/ui/AlertPopup;->mNativeObjectReference:Ljava/lang/Number;

    if-eqz v3, :cond_b

    .line 169
    iget-object v3, p0, Lcom/miniclip/ui/AlertPopup;->mNativeObjectReference:Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/miniclip/ui/AlertPopup;->nativePopupWillAppear(J)V

    .line 173
    :goto_2
    iget-object v3, p0, Lcom/miniclip/ui/AlertPopup;->mDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/miniclip/ui/AlertPopup$5;

    invoke-direct {v4, p0}, Lcom/miniclip/ui/AlertPopup$5;-><init>(Lcom/miniclip/ui/AlertPopup;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 185
    :try_start_0
    iget-object v3, p0, Lcom/miniclip/ui/AlertPopup;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "AlertPopup"

    const-string v4, "\u00a1Error! Failed to show Alert Popup!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 119
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v3, p0, Lcom/miniclip/ui/AlertPopup;->mButtonTitles:[Ljava/lang/String;

    array-length v3, v3

    if-ne v3, v11, :cond_6

    .line 120
    iget-object v3, p0, Lcom/miniclip/ui/AlertPopup;->mButtonTitles:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 121
    iget-object v3, p0, Lcom/miniclip/ui/AlertPopup;->mButtonTitles:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 122
    :cond_6
    iget-object v3, p0, Lcom/miniclip/ui/AlertPopup;->mButtonTitles:[Ljava/lang/String;

    array-length v3, v3

    if-ne v3, v12, :cond_7

    .line 124
    iget-object v3, p0, Lcom/miniclip/ui/AlertPopup;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 126
    iget-object v3, p0, Lcom/miniclip/ui/AlertPopup;->mButtonTitles:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 127
    iget-object v3, p0, Lcom/miniclip/ui/AlertPopup;->mButtonTitles:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 128
    iget-object v3, p0, Lcom/miniclip/ui/AlertPopup;->mButtonTitles:[Ljava/lang/String;

    aget-object v3, v3, v11

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 129
    :cond_7
    iget-object v3, p0, Lcom/miniclip/ui/AlertPopup;->mButtonTitles:[Ljava/lang/String;

    array-length v3, v3

    if-le v3, v12, :cond_3

    .line 132
    iget-object v3, p0, Lcom/miniclip/ui/AlertPopup;->mTitle:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 133
    iget-object v3, p0, Lcom/miniclip/ui/AlertPopup;->mMessage:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miniclip/ui/AlertPopup;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miniclip/ui/AlertPopup;->mMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 146
    :goto_3
    iget-object v3, p0, Lcom/miniclip/ui/AlertPopup;->mButtonTitles:[Ljava/lang/String;

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 136
    :cond_8
    iget-object v3, p0, Lcom/miniclip/ui/AlertPopup;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    .line 138
    :cond_9
    iget-object v3, p0, Lcom/miniclip/ui/AlertPopup;->mMessage:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 139
    iget-object v3, p0, Lcom/miniclip/ui/AlertPopup;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    .line 141
    :cond_a
    const-string v3, "AlertPopup"

    const-string v4, "Both title and message not set, we won\'t show this popup!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 171
    :cond_b
    const-string v3, "AlertPopup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tried calling nativePopupWillAppear with null messageId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/miniclip/ui/AlertPopup;->mNativeDialogId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method


# virtual methods
.method buttonIndexAjustment(Landroid/app/AlertDialog;I)I
    .locals 8
    .param p1, "dialog"    # Landroid/app/AlertDialog;
    .param p2, "buttonIndex"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v7, -0x1

    const/4 v6, -0x3

    const/4 v3, 0x0

    const/4 v5, -0x2

    .line 214
    if-gez p2, :cond_0

    .line 215
    invoke-virtual {p1, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 216
    .local v1, "neutralButtonText":Ljava/lang/String;
    invoke-virtual {p1, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    .local v0, "negativeButtonText":Ljava/lang/String;
    const-string v4, ""

    if-eq v1, v4, :cond_3

    .line 220
    if-ne p2, v7, :cond_1

    .line 221
    const/4 p2, 0x2

    .line 240
    .end local v0    # "negativeButtonText":Ljava/lang/String;
    .end local v1    # "neutralButtonText":Ljava/lang/String;
    .end local p2    # "buttonIndex":I
    :cond_0
    :goto_0
    return p2

    .line 222
    .restart local v0    # "negativeButtonText":Ljava/lang/String;
    .restart local v1    # "neutralButtonText":Ljava/lang/String;
    .restart local p2    # "buttonIndex":I
    :cond_1
    if-ne p2, v5, :cond_2

    move p2, v2

    .line 223
    goto :goto_0

    .line 224
    :cond_2
    if-ne p2, v6, :cond_0

    move p2, v3

    .line 225
    goto :goto_0

    .line 229
    :cond_3
    const-string v4, ""

    if-eq v0, v4, :cond_5

    .line 231
    if-ne p2, v7, :cond_4

    move p2, v2

    .line 232
    goto :goto_0

    .line 233
    :cond_4
    if-ne p2, v5, :cond_0

    move p2, v3

    .line 234
    goto :goto_0

    :cond_5
    move p2, v3

    .line 237
    goto :goto_0
.end method

.method public dismissAlertPopup()V
    .locals 2

    .prologue
    .line 71
    sget-object v0, Lcom/miniclip/framework/ThreadingContext;->AndroidUi:Lcom/miniclip/framework/ThreadingContext;

    new-instance v1, Lcom/miniclip/ui/AlertPopup$3;

    invoke-direct {v1, p0}, Lcom/miniclip/ui/AlertPopup$3;-><init>(Lcom/miniclip/ui/AlertPopup;)V

    invoke-static {v0, v1}, Lcom/miniclip/framework/Miniclip;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "buttonIndex"    # I

    .prologue
    .line 246
    move-object v1, p1

    check-cast v1, Landroid/app/AlertDialog;

    .line 247
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {p0, v1, p2}, Lcom/miniclip/ui/AlertPopup;->buttonIndexAjustment(Landroid/app/AlertDialog;I)I

    move-result v0

    .line 249
    .local v0, "buttonIndexAjusted":I
    iget-object v2, p0, Lcom/miniclip/ui/AlertPopup;->mNativeObjectReference:Ljava/lang/Number;

    if-eqz v2, :cond_0

    .line 250
    iget-object v2, p0, Lcom/miniclip/ui/AlertPopup;->mNativeObjectReference:Ljava/lang/Number;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v0}, Lcom/miniclip/ui/AlertPopup;->handleButtonPressNative(JI)V

    .line 252
    :cond_0
    invoke-direct {p0}, Lcom/miniclip/ui/AlertPopup;->closeDialog()V

    .line 253
    return-void
.end method

.method public showAlertPopup(Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cancelable"    # Z
    .param p4, "showActivityIndicator"    # Z
    .param p5, "buttonTitles"    # [Ljava/lang/String;

    .prologue
    .line 54
    const-string v0, "AlertPopup"

    const-string v1, "showAlertPopup start, in java"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iput-object p1, p0, Lcom/miniclip/ui/AlertPopup;->mTitle:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/miniclip/ui/AlertPopup;->mMessage:Ljava/lang/String;

    .line 58
    iput-boolean p3, p0, Lcom/miniclip/ui/AlertPopup;->mCancelable:Z

    .line 59
    iput-object p5, p0, Lcom/miniclip/ui/AlertPopup;->mButtonTitles:[Ljava/lang/String;

    .line 60
    iput-boolean p4, p0, Lcom/miniclip/ui/AlertPopup;->mShowActivityIndicator:Z

    .line 62
    sget-object v0, Lcom/miniclip/framework/ThreadingContext;->AndroidUi:Lcom/miniclip/framework/ThreadingContext;

    new-instance v1, Lcom/miniclip/ui/AlertPopup$2;

    invoke-direct {v1, p0}, Lcom/miniclip/ui/AlertPopup$2;-><init>(Lcom/miniclip/ui/AlertPopup;)V

    invoke-static {v0, v1}, Lcom/miniclip/framework/Miniclip;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method
