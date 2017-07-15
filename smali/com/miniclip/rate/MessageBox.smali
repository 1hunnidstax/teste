.class public Lcom/miniclip/rate/MessageBox;
.super Ljava/lang/Object;
.source "MessageBox.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miniclip/rate/MessageBox$MyHandler;
    }
.end annotation


# static fields
.field private static final HANDLER_CLOSE_DIALOG:I = 0x3

.field private static final HANDLER_EXIT_APP:I = 0x5

.field private static final HANDLER_HIDE_DIALOG:I = 0x2

.field private static final HANDLER_OPEN_MARKET:I = 0x4

.field private static final HANDLER_SHOW_DIALOG:I = 0x1

.field private static mActivity:Landroid/app/Activity;

.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private mDialogs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field

.field mMessageBoxHelperObjectReference:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/miniclip/rate/MessageBox;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {}, Lcom/miniclip/framework/Miniclip;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/miniclip/rate/MessageBox;->mActivity:Landroid/app/Activity;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miniclip/rate/MessageBox;->mDialogs:Ljava/util/HashMap;

    .line 66
    new-instance v0, Lcom/miniclip/rate/MessageBox$MyHandler;

    invoke-direct {v0, p0, p0}, Lcom/miniclip/rate/MessageBox$MyHandler;-><init>(Lcom/miniclip/rate/MessageBox;Lcom/miniclip/rate/MessageBox;)V

    sput-object v0, Lcom/miniclip/rate/MessageBox;->mHandler:Landroid/os/Handler;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/miniclip/rate/MessageBox;ILjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/rate/MessageBox;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z
    .param p5, "x5"    # [Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct/range {p0 .. p5}, Lcom/miniclip/rate/MessageBox;->showDialog(ILjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miniclip/rate/MessageBox;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/rate/MessageBox;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/miniclip/rate/MessageBox;->openAppMarketPageOnPlayStoreOrBrowser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miniclip/rate/MessageBox;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/rate/MessageBox;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miniclip/rate/MessageBox;->mDialogs:Ljava/util/HashMap;

    return-object v0
.end method

.method private native handleButtonPressNative(JII)V
.end method

.method private openAppMarketPageOnPlayStoreOrBrowser(Ljava/lang/String;)V
    .locals 10
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 154
    const-string v7, "Amazon"

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 155
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "amzn://apps/android?p="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 161
    .local v5, "rateIntent":Landroid/content/Intent;
    :goto_0
    const/4 v1, 0x0

    .line 164
    .local v1, "marketFound":Z
    sget-object v7, Lcom/miniclip/rate/MessageBox;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 166
    .local v4, "otherApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v7, "Amazon"

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 167
    sget-object v7, Lcom/miniclip/rate/MessageBox;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 201
    :cond_0
    :goto_1
    return-void

    .line 158
    .end local v1    # "marketFound":Z
    .end local v4    # "otherApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "rateIntent":Landroid/content/Intent;
    :cond_1
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "market://details?id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&hl=en"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v5    # "rateIntent":Landroid/content/Intent;
    goto :goto_0

    .line 171
    .restart local v1    # "marketFound":Z
    .restart local v4    # "otherApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 173
    .local v2, "otherApp":Landroid/content/pm/ResolveInfo;
    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v9, "com.android.vending"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 175
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 176
    .local v3, "otherAppActivity":Landroid/content/pm/ActivityInfo;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .local v0, "componentName":Landroid/content/ComponentName;
    const/high16 v7, 0x10200000

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 181
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 182
    sget-object v7, Lcom/miniclip/rate/MessageBox;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 183
    const/4 v1, 0x1

    .line 191
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "otherApp":Landroid/content/pm/ResolveInfo;
    .end local v3    # "otherAppActivity":Landroid/content/pm/ActivityInfo;
    :cond_4
    if-nez v1, :cond_0

    .line 193
    const-string v7, "Amazon"

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 194
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://www.amazon.com/gp/mas/dl/android?p="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 199
    .local v6, "webIntent":Landroid/content/Intent;
    :goto_2
    sget-object v7, Lcom/miniclip/rate/MessageBox;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 197
    .end local v6    # "webIntent":Landroid/content/Intent;
    :cond_5
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v6    # "webIntent":Landroid/content/Intent;
    goto :goto_2
.end method

.method private native ratePopupDidAppear(J)V
.end method

.method private native ratePopupDidDisappear(J)V
.end method

.method private native ratePopupWillAppear(J)V
.end method

.method private native ratePopupWillDisappear(J)V
.end method

.method private showDialog(ILjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 7
    .param p1, "msgId"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "cancelable"    # Z
    .param p5, "buttonTitles"    # [Ljava/lang/String;

    .prologue
    .line 254
    iget-object v4, p0, Lcom/miniclip/rate/MessageBox;->mDialogs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 255
    array-length v4, p5

    const/4 v5, 0x4

    if-ge v4, v5, :cond_5

    .line 256
    new-instance v4, Landroid/app/AlertDialog$Builder;

    sget-object v5, Lcom/miniclip/rate/MessageBox;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 257
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p5

    if-ge v3, v4, :cond_3

    .line 258
    invoke-virtual {p0, v3}, Lcom/miniclip/rate/MessageBox;->int2ButtonValue(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 259
    aget-object v4, p5, v3

    invoke-virtual {v0, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 257
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual {p0, v3}, Lcom/miniclip/rate/MessageBox;->int2ButtonValue(I)I

    move-result v4

    const/4 v5, -0x2

    if-ne v4, v5, :cond_2

    .line 261
    aget-object v4, p5, v3

    invoke-virtual {v0, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 262
    :cond_2
    invoke-virtual {p0, v3}, Lcom/miniclip/rate/MessageBox;->int2ButtonValue(I)I

    move-result v4

    const/4 v5, -0x3

    if-ne v4, v5, :cond_0

    .line 263
    aget-object v4, p5, v3

    invoke-virtual {v0, v4, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 265
    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 276
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .local v1, "dialog":Landroid/app/Dialog;
    :cond_4
    iget-object v4, p0, Lcom/miniclip/rate/MessageBox;->mDialogs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .end local v3    # "i":I
    :goto_2
    new-instance v4, Lcom/miniclip/rate/MessageBox$1;

    invoke-direct {v4, p0, p4}, Lcom/miniclip/rate/MessageBox$1;-><init>(Lcom/miniclip/rate/MessageBox;Z)V

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 299
    invoke-virtual {v1, p4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 301
    iget-wide v4, p0, Lcom/miniclip/rate/MessageBox;->mMessageBoxHelperObjectReference:J

    invoke-direct {p0, v4, v5}, Lcom/miniclip/rate/MessageBox;->ratePopupWillAppear(J)V

    .line 303
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_3
    iget-wide v4, p0, Lcom/miniclip/rate/MessageBox;->mMessageBoxHelperObjectReference:J

    invoke-direct {p0, v4, v5}, Lcom/miniclip/rate/MessageBox;->ratePopupDidAppear(J)V

    .line 309
    return-void

    .line 267
    .end local v1    # "dialog":Landroid/app/Dialog;
    :cond_5
    new-instance v4, Landroid/app/AlertDialog$Builder;

    sget-object v5, Lcom/miniclip/rate/MessageBox;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 268
    .restart local v1    # "dialog":Landroid/app/Dialog;
    invoke-virtual {v1, p2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    move-object v4, v1

    .line 269
    check-cast v4, Landroid/app/AlertDialog;

    invoke-virtual {v4, p3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 270
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    array-length v4, p5

    if-ge v3, v4, :cond_4

    move-object v4, v1

    .line 272
    check-cast v4, Landroid/app/AlertDialog;

    invoke-virtual {p0, v3}, Lcom/miniclip/rate/MessageBox;->int2ButtonValue(I)I

    move-result v5

    aget-object v6, p5, v3

    invoke-virtual {v4, v5, v6, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 270
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 278
    .end local v1    # "dialog":Landroid/app/Dialog;
    .end local v3    # "i":I
    :cond_6
    iget-object v4, p0, Lcom/miniclip/rate/MessageBox;->mDialogs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Dialog;

    .restart local v1    # "dialog":Landroid/app/Dialog;
    goto :goto_2

    .line 304
    :catch_0
    move-exception v2

    .line 305
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "MessageBox"

    const-string v5, "Failed to show dialog!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method buttonValue2Int(I)I
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x0

    .line 113
    packed-switch p1, :pswitch_data_0

    .line 125
    :goto_0
    :pswitch_0
    return v0

    .line 118
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 121
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method closeDialog(I)V
    .locals 4
    .param p1, "msgId"    # I

    .prologue
    .line 321
    iget-wide v2, p0, Lcom/miniclip/rate/MessageBox;->mMessageBoxHelperObjectReference:J

    invoke-direct {p0, v2, v3}, Lcom/miniclip/rate/MessageBox;->ratePopupWillDisappear(J)V

    .line 323
    iget-object v1, p0, Lcom/miniclip/rate/MessageBox;->mDialogs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    iget-object v1, p0, Lcom/miniclip/rate/MessageBox;->mDialogs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 325
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 327
    :cond_0
    iget-wide v2, p0, Lcom/miniclip/rate/MessageBox;->mMessageBoxHelperObjectReference:J

    invoke-direct {p0, v2, v3}, Lcom/miniclip/rate/MessageBox;->ratePopupDidDisappear(J)V

    .line 328
    iget-object v1, p0, Lcom/miniclip/rate/MessageBox;->mDialogs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_1
    return-void
.end method

.method public closeMessageBox(I)V
    .locals 2
    .param p1, "msgId"    # I

    .prologue
    .line 104
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 105
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 106
    new-instance v1, Lcom/miniclip/rate/DialogMessage;

    invoke-direct {v1, p1}, Lcom/miniclip/rate/DialogMessage;-><init>(I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 108
    sget-object v1, Lcom/miniclip/rate/MessageBox;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 109
    return-void
.end method

.method hideDialog(I)V
    .locals 0
    .param p1, "msgId"    # I

    .prologue
    .line 312
    invoke-virtual {p0, p1}, Lcom/miniclip/rate/MessageBox;->closeDialog(I)V

    .line 318
    return-void
.end method

.method public hideMessageBox(I)V
    .locals 2
    .param p1, "msgId"    # I

    .prologue
    .line 96
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 97
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 98
    new-instance v1, Lcom/miniclip/rate/DialogMessage;

    invoke-direct {v1, p1}, Lcom/miniclip/rate/DialogMessage;-><init>(I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 100
    sget-object v1, Lcom/miniclip/rate/MessageBox;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 101
    return-void
.end method

.method int2ButtonValue(I)I
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, -0x2

    .line 128
    packed-switch p1, :pswitch_data_0

    .line 140
    :goto_0
    :pswitch_0
    return v0

    .line 130
    :pswitch_1
    const/4 v0, -0x1

    goto :goto_0

    .line 136
    :pswitch_2
    const/4 v0, -0x3

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "buttonIndex"    # I

    .prologue
    .line 334
    iget-object v1, p0, Lcom/miniclip/rate/MessageBox;->mDialogs:Ljava/util/HashMap;

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

    .line 335
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/app/Dialog;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 337
    iget-wide v2, p0, Lcom/miniclip/rate/MessageBox;->mMessageBoxHelperObjectReference:J

    invoke-direct {p0, v2, v3}, Lcom/miniclip/rate/MessageBox;->ratePopupWillDisappear(J)V

    .line 338
    iget-wide v2, p0, Lcom/miniclip/rate/MessageBox;->mMessageBoxHelperObjectReference:J

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v2, v3, v1, p2}, Lcom/miniclip/rate/MessageBox;->handleButtonPressNative(JII)V

    .line 342
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/app/Dialog;>;"
    :cond_1
    return-void
.end method

.method public openAppMarketPage(Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 144
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 145
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 146
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 148
    sget-object v1, Lcom/miniclip/rate/MessageBox;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 149
    return-void
.end method

.method public showMessageBox(JILjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 3
    .param p1, "messageBoxHelperObjectReference"    # J
    .param p3, "msgId"    # I
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "cancelable"    # Z
    .param p7, "buttonTitles"    # [Ljava/lang/String;

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/miniclip/rate/MessageBox;->mMessageBoxHelperObjectReference:J

    .line 82
    new-instance v0, Lcom/miniclip/rate/DialogMessage;

    invoke-direct {v0, p3}, Lcom/miniclip/rate/DialogMessage;-><init>(I)V

    .line 83
    .local v0, "dm":Lcom/miniclip/rate/DialogMessage;
    iput-object p4, v0, Lcom/miniclip/rate/DialogMessage;->title:Ljava/lang/String;

    .line 84
    iput-object p5, v0, Lcom/miniclip/rate/DialogMessage;->message:Ljava/lang/String;

    .line 85
    iput-boolean p6, v0, Lcom/miniclip/rate/DialogMessage;->cancelable:Z

    .line 86
    iput-object p7, v0, Lcom/miniclip/rate/DialogMessage;->buttonTitles:[Ljava/lang/String;

    .line 88
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 89
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 90
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 92
    sget-object v2, Lcom/miniclip/rate/MessageBox;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 93
    return-void
.end method
