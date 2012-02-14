.class public abstract Landroid/app/ActivityManagerNative;
.super Landroid/os/Binder;
.source "ActivityManagerNative.java"

# interfaces
.implements Landroid/app/IActivityManager;


# static fields
.field private static gDefault:Landroid/app/IActivityManager;

.field static sSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 122
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ActivityManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 57
    if-nez p0, :cond_0

    .line 58
    const/4 v1, 0x0

    .line 66
    :goto_0
    return-object v1

    .line 60
    :cond_0
    const-string v1, "android.app.IActivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    .line 62
    .local v0, in:Landroid/app/IActivityManager;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 63
    goto :goto_0

    .line 66
    :cond_1
    new-instance v1, Landroid/app/ActivityManagerProxy;

    invoke-direct {v1, p0}, Landroid/app/ActivityManagerProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 11
    .parameter "intent"
    .parameter "permission"

    .prologue
    .line 106
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v2, p0

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getDefault()Landroid/app/IActivityManager;
    .locals 2

    .prologue
    .line 74
    sget-object v1, Landroid/app/ActivityManagerNative;->gDefault:Landroid/app/IActivityManager;

    if-eqz v1, :cond_0

    .line 77
    sget-object v1, Landroid/app/ActivityManagerNative;->gDefault:Landroid/app/IActivityManager;

    .line 85
    :goto_0
    return-object v1

    .line 79
    :cond_0
    const-string v1, "activity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 82
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v1

    sput-object v1, Landroid/app/ActivityManagerNative;->gDefault:Landroid/app/IActivityManager;

    .line 85
    sget-object v1, Landroid/app/ActivityManagerNative;->gDefault:Landroid/app/IActivityManager;

    goto :goto_0
.end method

.method public static isSystemReady()Z
    .locals 1

    .prologue
    .line 92
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    if-nez v0, :cond_0

    .line 93
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->testIsSystemReady()Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 95
    :cond_0
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    return v0
.end method

.method public static noteWakeupAlarm(Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "ps"

    .prologue
    .line 115
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->noteWakeupAlarm(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 1344
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 153
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 127
    packed-switch p1, :pswitch_data_0

    .line 1339
    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    .end local p1
    :goto_0
    return v5

    .line 130
    .restart local p1
    :pswitch_1
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 132
    .local v83, b:Landroid/os/IBinder;
    invoke-static/range {v83 .. v83}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 133
    .local v6, app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 134
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 135
    .local v8, resolvedType:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/net/Uri;

    .line 136
    .local v9, grantedUriPermissions:[Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 137
    .local v10, grantedMode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 138
    .local v11, resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 139
    .local v12, resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 140
    .local v13, requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    move v14, v5

    .line 141
    .local v14, onlyIfNeeded:Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    move v15, v5

    .local v15, debug:Z
    :goto_2
    move-object/from16 v5, p0

    .line 142
    invoke-virtual/range {v5 .. v15}, Landroid/app/ActivityManagerNative;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZ)I

    move-result v140

    .line 145
    .local v140, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    move-object/from16 v0, p3

    move/from16 v1, v140

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    const/4 v5, 0x1

    goto :goto_0

    .line 140
    .end local v14           #onlyIfNeeded:Z
    .end local v15           #debug:Z
    .end local v140           #result:I
    :cond_0
    const/4 v5, 0x0

    move v14, v5

    goto :goto_1

    .line 141
    .restart local v14       #onlyIfNeeded:Z
    :cond_1
    const/4 v5, 0x0

    move v15, v5

    goto :goto_2

    .line 152
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #grantedUriPermissions:[Landroid/net/Uri;
    .end local v10           #grantedMode:I
    .end local v11           #resultTo:Landroid/os/IBinder;
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v14           #onlyIfNeeded:Z
    .end local v83           #b:Landroid/os/IBinder;
    :pswitch_2
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 154
    .restart local v83       #b:Landroid/os/IBinder;
    invoke-static/range {v83 .. v83}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 155
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 156
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 157
    .restart local v8       #resolvedType:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/net/Uri;

    .line 158
    .restart local v9       #grantedUriPermissions:[Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 159
    .restart local v10       #grantedMode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 160
    .restart local v11       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 161
    .restart local v12       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 162
    .restart local v13       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    move v14, v5

    .line 163
    .restart local v14       #onlyIfNeeded:Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    move v15, v5

    .restart local v15       #debug:Z
    :goto_4
    move-object/from16 v5, p0

    .line 164
    invoke-virtual/range {v5 .. v15}, Landroid/app/ActivityManagerNative;->startActivityAndWait(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZ)Landroid/app/IActivityManager$WaitResult;

    move-result-object v140

    .line 167
    .local v140, result:Landroid/app/IActivityManager$WaitResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    const/4 v5, 0x0

    move-object/from16 v0, v140

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$WaitResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 169
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 162
    .end local v14           #onlyIfNeeded:Z
    .end local v15           #debug:Z
    .end local v140           #result:Landroid/app/IActivityManager$WaitResult;
    :cond_2
    const/4 v5, 0x0

    move v14, v5

    goto :goto_3

    .line 163
    .restart local v14       #onlyIfNeeded:Z
    :cond_3
    const/4 v5, 0x0

    move v15, v5

    goto :goto_4

    .line 174
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #grantedUriPermissions:[Landroid/net/Uri;
    .end local v10           #grantedMode:I
    .end local v11           #resultTo:Landroid/os/IBinder;
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v14           #onlyIfNeeded:Z
    .end local v83           #b:Landroid/os/IBinder;
    :pswitch_3
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 176
    .restart local v83       #b:Landroid/os/IBinder;
    invoke-static/range {v83 .. v83}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 177
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 178
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 179
    .restart local v8       #resolvedType:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/net/Uri;

    .line 180
    .restart local v9       #grantedUriPermissions:[Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 181
    .restart local v10       #grantedMode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 182
    .restart local v11       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 183
    .restart local v12       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 184
    .restart local v13       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    move v14, v5

    .line 185
    .restart local v14       #onlyIfNeeded:Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    move v15, v5

    .line 186
    .restart local v15       #debug:Z
    :goto_6
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/res/Configuration;

    .local v16, config:Landroid/content/res/Configuration;
    move-object/from16 v5, p0

    .line 187
    invoke-virtual/range {v5 .. v16}, Landroid/app/ActivityManagerNative;->startActivityWithConfig(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZLandroid/content/res/Configuration;)I

    move-result v140

    .line 190
    .local v140, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    move-object/from16 v0, p3

    move/from16 v1, v140

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 184
    .end local v14           #onlyIfNeeded:Z
    .end local v15           #debug:Z
    .end local v16           #config:Landroid/content/res/Configuration;
    .end local v140           #result:I
    :cond_4
    const/4 v5, 0x0

    move v14, v5

    goto :goto_5

    .line 185
    .restart local v14       #onlyIfNeeded:Z
    :cond_5
    const/4 v5, 0x0

    move v15, v5

    goto :goto_6

    .line 197
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #grantedUriPermissions:[Landroid/net/Uri;
    .end local v10           #grantedMode:I
    .end local v11           #resultTo:Landroid/os/IBinder;
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v14           #onlyIfNeeded:Z
    .end local v83           #b:Landroid/os/IBinder;
    :pswitch_4
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 199
    .restart local v83       #b:Landroid/os/IBinder;
    invoke-static/range {v83 .. v83}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 200
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/IntentSender;

    .line 201
    .local v7, intent:Landroid/content/IntentSender;
    const/16 v20, 0x0

    .line 202
    .local v20, fillInIntent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    .line 203
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    .end local v20           #fillInIntent:Landroid/content/Intent;
    check-cast v20, Landroid/content/Intent;

    .line 205
    .restart local v20       #fillInIntent:Landroid/content/Intent;
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 206
    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 207
    .restart local v11       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 208
    .restart local v12       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 209
    .restart local v13       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 210
    .local v25, flagsMask:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .local v26, flagsValues:I
    move-object/from16 v17, p0

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v11

    move-object/from16 v23, v12

    move/from16 v24, v13

    .line 211
    invoke-virtual/range {v17 .. v26}, Landroid/app/ActivityManagerNative;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;III)I

    move-result v140

    .line 214
    .restart local v140       #result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    move-object/from16 v0, p3

    move/from16 v1, v140

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 221
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/IntentSender;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v11           #resultTo:Landroid/os/IBinder;
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v20           #fillInIntent:Landroid/content/Intent;
    .end local v25           #flagsMask:I
    .end local v26           #flagsValues:I
    .end local v83           #b:Landroid/os/IBinder;
    .end local v140           #result:I
    :pswitch_5
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v86

    .line 223
    .local v86, callingActivity:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 224
    .local v7, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v86

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;)Z

    move-result v140

    .line 225
    .local v140, result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    if-eqz v140, :cond_7

    const/4 v5, 0x1

    :goto_7
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 226
    :cond_7
    const/4 v5, 0x0

    goto :goto_7

    .line 231
    .end local v7           #intent:Landroid/content/Intent;
    .end local v86           #callingActivity:Landroid/os/IBinder;
    .end local v140           #result:Z
    :pswitch_6
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 233
    .local v46, token:Landroid/os/IBinder;
    const/16 v33, 0x0

    .line 234
    .local v33, resultData:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 235
    .local v32, resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    .line 236
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    .end local v33           #resultData:Landroid/content/Intent;
    check-cast v33, Landroid/content/Intent;

    .line 238
    .restart local v33       #resultData:Landroid/content/Intent;
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z

    move-result v139

    .line 239
    .local v139, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    if-eqz v139, :cond_9

    const/4 v5, 0x1

    :goto_8
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 240
    :cond_9
    const/4 v5, 0x0

    goto :goto_8

    .line 245
    .end local v32           #resultCode:I
    .end local v33           #resultData:Landroid/content/Intent;
    .end local v46           #token:Landroid/os/IBinder;
    .end local v139           #res:Z
    :pswitch_7
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 247
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 248
    .restart local v12       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 249
    .restart local v13       #requestCode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object v2, v12

    move v3, v13

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 250
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 255
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v46           #token:Landroid/os/IBinder;
    :pswitch_8
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 257
    .restart local v46       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v139

    .line 258
    .restart local v139       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    if-eqz v139, :cond_a

    const/4 v5, 0x1

    :goto_9
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 259
    :cond_a
    const/4 v5, 0x0

    goto :goto_9

    .line 265
    .end local v46           #token:Landroid/os/IBinder;
    .end local v139           #res:Z
    :pswitch_9
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 267
    .restart local v83       #b:Landroid/os/IBinder;
    if-eqz v83, :cond_b

    invoke-static/range {v83 .. v83}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v5

    move-object v6, v5

    .line 269
    .restart local v6       #app:Landroid/app/IApplicationThread;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 270
    if-eqz v83, :cond_c

    invoke-static/range {v83 .. v83}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v5

    move-object/from16 v134, v5

    .line 272
    .local v134, rec:Landroid/content/IIntentReceiver;
    :goto_b
    sget-object v5, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v98

    check-cast v98, Landroid/content/IntentFilter;

    .line 273
    .local v98, filter:Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 274
    .local v35, perm:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v134

    move-object/from16 v3, v98

    move-object/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->registerReceiver(Landroid/app/IApplicationThread;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 275
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    if-eqz v7, :cond_d

    .line 277
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    const/4 v5, 0x0

    move-object v0, v7

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 282
    :goto_c
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 267
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v35           #perm:Ljava/lang/String;
    .end local v98           #filter:Landroid/content/IntentFilter;
    .end local v134           #rec:Landroid/content/IIntentReceiver;
    :cond_b
    const/4 v5, 0x0

    move-object v6, v5

    goto :goto_a

    .line 270
    .restart local v6       #app:Landroid/app/IApplicationThread;
    :cond_c
    const/4 v5, 0x0

    move-object/from16 v134, v5

    goto :goto_b

    .line 280
    .restart local v7       #intent:Landroid/content/Intent;
    .restart local v35       #perm:Ljava/lang/String;
    .restart local v98       #filter:Landroid/content/IntentFilter;
    .restart local v134       #rec:Landroid/content/IIntentReceiver;
    :cond_d
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 287
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v35           #perm:Ljava/lang/String;
    .end local v83           #b:Landroid/os/IBinder;
    .end local v98           #filter:Landroid/content/IntentFilter;
    .end local v134           #rec:Landroid/content/IIntentReceiver;
    :pswitch_a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 289
    .restart local v83       #b:Landroid/os/IBinder;
    if-nez v83, :cond_e

    .line 290
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 292
    :cond_e
    invoke-static/range {v83 .. v83}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v134

    .line 293
    .restart local v134       #rec:Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 294
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 300
    .end local v83           #b:Landroid/os/IBinder;
    .end local v134           #rec:Landroid/content/IIntentReceiver;
    :pswitch_b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 302
    .restart local v83       #b:Landroid/os/IBinder;
    if-eqz v83, :cond_f

    invoke-static/range {v83 .. v83}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v5

    move-object v6, v5

    .line 304
    .restart local v6       #app:Landroid/app/IApplicationThread;
    :goto_d
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 305
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 306
    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 307
    if-eqz v83, :cond_10

    invoke-static/range {v83 .. v83}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v5

    move-object v11, v5

    .line 309
    .local v11, resultTo:Landroid/content/IIntentReceiver;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 310
    .restart local v32       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 311
    .local v33, resultData:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v34

    .line 312
    .local v34, resultExtras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 313
    .restart local v35       #perm:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_11

    const/4 v5, 0x1

    move/from16 v36, v5

    .line 314
    .local v36, serialized:Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    const/4 v5, 0x1

    move/from16 v37, v5

    .local v37, sticky:Z
    :goto_10
    move-object/from16 v27, p0

    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    move-object/from16 v31, v11

    .line 315
    invoke-virtual/range {v27 .. v37}, Landroid/app/ActivityManagerNative;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I

    move-result v139

    .line 318
    .local v139, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    move-object/from16 v0, p3

    move/from16 v1, v139

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 302
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v11           #resultTo:Landroid/content/IIntentReceiver;
    .end local v32           #resultCode:I
    .end local v33           #resultData:Ljava/lang/String;
    .end local v34           #resultExtras:Landroid/os/Bundle;
    .end local v35           #perm:Ljava/lang/String;
    .end local v36           #serialized:Z
    .end local v37           #sticky:Z
    .end local v139           #res:I
    :cond_f
    const/4 v5, 0x0

    move-object v6, v5

    goto :goto_d

    .line 307
    .restart local v6       #app:Landroid/app/IApplicationThread;
    .restart local v7       #intent:Landroid/content/Intent;
    .restart local v8       #resolvedType:Ljava/lang/String;
    :cond_10
    const/4 v5, 0x0

    move-object v11, v5

    goto :goto_e

    .line 313
    .restart local v11       #resultTo:Landroid/content/IIntentReceiver;
    .restart local v32       #resultCode:I
    .restart local v33       #resultData:Ljava/lang/String;
    .restart local v34       #resultExtras:Landroid/os/Bundle;
    .restart local v35       #perm:Ljava/lang/String;
    :cond_11
    const/4 v5, 0x0

    move/from16 v36, v5

    goto :goto_f

    .line 314
    .restart local v36       #serialized:Z
    :cond_12
    const/4 v5, 0x0

    move/from16 v37, v5

    goto :goto_10

    .line 325
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v11           #resultTo:Landroid/content/IIntentReceiver;
    .end local v32           #resultCode:I
    .end local v33           #resultData:Ljava/lang/String;
    .end local v34           #resultExtras:Landroid/os/Bundle;
    .end local v35           #perm:Ljava/lang/String;
    .end local v36           #serialized:Z
    .end local v83           #b:Landroid/os/IBinder;
    :pswitch_c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 327
    .restart local v83       #b:Landroid/os/IBinder;
    if-eqz v83, :cond_13

    invoke-static/range {v83 .. v83}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v5

    move-object v6, v5

    .line 328
    .restart local v6       #app:Landroid/app/IApplicationThread;
    :goto_11
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 329
    .restart local v7       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;)V

    .line 330
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 327
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    :cond_13
    const/4 v5, 0x0

    move-object v6, v5

    goto :goto_11

    .line 335
    .end local v83           #b:Landroid/os/IBinder;
    :pswitch_d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 337
    .local v39, who:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 338
    .restart local v32       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 339
    .restart local v33       #resultData:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v34

    .line 340
    .restart local v34       #resultExtras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    const/4 v5, 0x1

    move/from16 v43, v5

    .line 341
    .local v43, resultAbort:Z
    :goto_12
    if-eqz v39, :cond_14

    move-object/from16 v38, p0

    move/from16 v40, v32

    move-object/from16 v41, v33

    move-object/from16 v42, v34

    .line 342
    invoke-virtual/range {v38 .. v43}, Landroid/app/ActivityManagerNative;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 344
    :cond_14
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 340
    .end local v43           #resultAbort:Z
    :cond_15
    const/4 v5, 0x0

    move/from16 v43, v5

    goto :goto_12

    .line 349
    .end local v32           #resultCode:I
    .end local v33           #resultData:Ljava/lang/String;
    .end local v34           #resultExtras:Landroid/os/Bundle;
    .end local v39           #who:Landroid/os/IBinder;
    :pswitch_e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 352
    .restart local v6       #app:Landroid/app/IApplicationThread;
    if-eqz v6, :cond_16

    .line 353
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->attachApplication(Landroid/app/IApplicationThread;)V

    .line 355
    :cond_16
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 360
    .end local v6           #app:Landroid/app/IApplicationThread;
    :pswitch_f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 362
    .restart local v46       #token:Landroid/os/IBinder;
    const/16 v16, 0x0

    .line 363
    .restart local v16       #config:Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_17

    .line 364
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #config:Landroid/content/res/Configuration;
    check-cast v16, Landroid/content/res/Configuration;

    .line 366
    .restart local v16       #config:Landroid/content/res/Configuration;
    :cond_17
    if-eqz v46, :cond_18

    .line 367
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    .line 369
    :cond_18
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 374
    .end local v16           #config:Landroid/content/res/Configuration;
    .end local v46           #token:Landroid/os/IBinder;
    :pswitch_10
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 376
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v112

    .line 377
    .local v112, map:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v112

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->activityPaused(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 378
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 383
    .end local v46           #token:Landroid/os/IBinder;
    .end local v112           #map:Landroid/os/Bundle;
    :pswitch_11
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 385
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/graphics/Bitmap;

    move-object/from16 v148, p1

    .line 387
    .local v148, thumbnail:Landroid/graphics/Bitmap;
    :goto_13
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v92

    check-cast v92, Ljava/lang/CharSequence;

    .line 388
    .local v92, description:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v148

    move-object/from16 v3, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->activityStopped(Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 389
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 385
    .end local v92           #description:Ljava/lang/CharSequence;
    .end local v148           #thumbnail:Landroid/graphics/Bitmap;
    .restart local p1
    :cond_19
    const/4 v5, 0x0

    move-object/from16 v148, v5

    goto :goto_13

    .line 394
    .end local v46           #token:Landroid/os/IBinder;
    :pswitch_12
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 396
    .restart local v46       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityDestroyed(Landroid/os/IBinder;)V

    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 402
    .end local v46           #token:Landroid/os/IBinder;
    :pswitch_13
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 404
    .restart local v46       #token:Landroid/os/IBinder;
    if-eqz v46, :cond_1a

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v139, v5

    .line 405
    .local v139, res:Ljava/lang/String;
    :goto_14
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    move-object/from16 v0, p3

    move-object/from16 v1, v139

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 407
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 404
    .end local v139           #res:Ljava/lang/String;
    :cond_1a
    const/4 v5, 0x0

    move-object/from16 v139, v5

    goto :goto_14

    .line 411
    .end local v46           #token:Landroid/os/IBinder;
    :pswitch_14
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 413
    .restart local v46       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v89

    .line 414
    .local v89, cn:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    move-object/from16 v0, v89

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 416
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 420
    .end local v46           #token:Landroid/os/IBinder;
    .end local v89           #cn:Landroid/content/ComponentName;
    :pswitch_15
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v114

    .line 422
    .local v114, maxNum:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v56

    .line 423
    .local v56, fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v136

    .line 424
    .local v136, receiverBinder:Landroid/os/IBinder;
    if-eqz v136, :cond_1b

    invoke-static/range {v136 .. v136}, Landroid/app/IThumbnailReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IThumbnailReceiver;

    move-result-object v5

    move-object/from16 v135, v5

    .line 427
    .local v135, receiver:Landroid/app/IThumbnailReceiver;
    :goto_15
    move-object/from16 v0, p0

    move/from16 v1, v114

    move/from16 v2, v56

    move-object/from16 v3, v135

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v107

    .line 428
    .local v107, list:Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    if-eqz v107, :cond_1c

    invoke-interface/range {v107 .. v107}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v79, v5

    .line 430
    .local v79, N:I
    :goto_16
    move-object/from16 v0, p3

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    const/16 v99, 0x0

    .local v99, i:I
    :goto_17
    move/from16 v0, v99

    move/from16 v1, v79

    if-ge v0, v1, :cond_1d

    .line 433
    move-object/from16 v0, v107

    move/from16 v1, v99

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v102

    check-cast v102, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 435
    .local v102, info:Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v102

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 432
    add-int/lit8 v99, v99, 0x1

    goto :goto_17

    .line 424
    .end local v79           #N:I
    .end local v99           #i:I
    .end local v102           #info:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v107           #list:Ljava/util/List;
    .end local v135           #receiver:Landroid/app/IThumbnailReceiver;
    :cond_1b
    const/4 v5, 0x0

    move-object/from16 v135, v5

    goto :goto_15

    .line 429
    .restart local v107       #list:Ljava/util/List;
    .restart local v135       #receiver:Landroid/app/IThumbnailReceiver;
    :cond_1c
    const/4 v5, -0x1

    move/from16 v79, v5

    goto :goto_16

    .line 437
    .restart local v79       #N:I
    .restart local v99       #i:I
    :cond_1d
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 443
    .end local v56           #fl:I
    .end local v79           #N:I
    .end local v99           #i:I
    .end local v107           #list:Ljava/util/List;
    .end local v114           #maxNum:I
    .end local v135           #receiver:Landroid/app/IThumbnailReceiver;
    .end local v136           #receiverBinder:Landroid/os/IBinder;
    :pswitch_16
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v101

    .line 445
    .local v101, index:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v136

    .line 446
    .restart local v136       #receiverBinder:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTasks(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v102

    .line 447
    .restart local v102       #info:Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    const/4 v5, 0x0

    move-object/from16 v0, v102

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 449
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 454
    .end local v101           #index:I
    .end local v102           #info:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v136           #receiverBinder:Landroid/os/IBinder;
    :pswitch_17
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v136

    .line 456
    .restart local v136       #receiverBinder:Landroid/os/IBinder;
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getTasksNum()I

    move-result v79

    .line 457
    .restart local v79       #N:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    move-object/from16 v0, p3

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 464
    .end local v79           #N:I
    .end local v136           #receiverBinder:Landroid/os/IBinder;
    :pswitch_18
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v114

    .line 466
    .restart local v114       #maxNum:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v56

    .line 467
    .restart local v56       #fl:I
    move-object/from16 v0, p0

    move/from16 v1, v114

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getRecentTasks(II)Ljava/util/List;

    move-result-object v109

    .line 469
    .local v109, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    move-object/from16 v0, p3

    move-object/from16 v1, v109

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 471
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 475
    .end local v56           #fl:I
    .end local v109           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v114           #maxNum:I
    :pswitch_19
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->clearRecentTasks()V

    .line 477
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 482
    :pswitch_1a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v114

    .line 484
    .restart local v114       #maxNum:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v56

    .line 485
    .restart local v56       #fl:I
    move-object/from16 v0, p0

    move/from16 v1, v114

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getServices(II)Ljava/util/List;

    move-result-object v107

    .line 486
    .restart local v107       #list:Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    if-eqz v107, :cond_1e

    invoke-interface/range {v107 .. v107}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v79, v5

    .line 488
    .restart local v79       #N:I
    :goto_18
    move-object/from16 v0, p3

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    const/16 v99, 0x0

    .restart local v99       #i:I
    :goto_19
    move/from16 v0, v99

    move/from16 v1, v79

    if-ge v0, v1, :cond_1f

    .line 491
    move-object/from16 v0, v107

    move/from16 v1, v99

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v102

    check-cast v102, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 493
    .local v102, info:Landroid/app/ActivityManager$RunningServiceInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v102

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager$RunningServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 490
    add-int/lit8 v99, v99, 0x1

    goto :goto_19

    .line 487
    .end local v79           #N:I
    .end local v99           #i:I
    .end local v102           #info:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1e
    const/4 v5, -0x1

    move/from16 v79, v5

    goto :goto_18

    .line 495
    .restart local v79       #N:I
    .restart local v99       #i:I
    :cond_1f
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 499
    .end local v56           #fl:I
    .end local v79           #N:I
    .end local v99           #i:I
    .end local v107           #list:Ljava/util/List;
    .end local v114           #maxNum:I
    :pswitch_1b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v108

    .line 501
    .local v108, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    move-object/from16 v0, p3

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 503
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 507
    .end local v108           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :pswitch_1c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v110

    .line 509
    .local v110, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    move-object/from16 v0, p3

    move-object/from16 v1, v110

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 511
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 515
    .end local v110           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :pswitch_1d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v111

    .line 517
    .local v111, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    move-object/from16 v0, p3

    move-object/from16 v1, v111

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 519
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 523
    .end local v111           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :pswitch_1e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v147

    .line 525
    .local v147, task:I
    move-object/from16 v0, p0

    move/from16 v1, v147

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskToFront(I)V

    .line 526
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 531
    .end local v147           #task:I
    :pswitch_1f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v147

    .line 533
    .restart local v147       #task:I
    move-object/from16 v0, p0

    move/from16 v1, v147

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskToBack(I)V

    .line 534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 539
    .end local v147           #task:I
    :pswitch_20
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 541
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_20

    const/4 v5, 0x1

    move/from16 v118, v5

    .line 542
    .local v118, nonRoot:Z
    :goto_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v118

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v139

    .line 543
    .local v139, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    if-eqz v139, :cond_21

    const/4 v5, 0x1

    :goto_1b
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 541
    .end local v118           #nonRoot:Z
    .end local v139           #res:Z
    :cond_20
    const/4 v5, 0x0

    move/from16 v118, v5

    goto :goto_1a

    .line 544
    .restart local v118       #nonRoot:Z
    .restart local v139       #res:Z
    :cond_21
    const/4 v5, 0x0

    goto :goto_1b

    .line 549
    .end local v46           #token:Landroid/os/IBinder;
    .end local v118           #nonRoot:Z
    .end local v139           #res:Z
    :pswitch_21
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 550
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v147

    .line 551
    .restart local v147       #task:I
    move-object/from16 v0, p0

    move/from16 v1, v147

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskBackwards(I)V

    .line 552
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 557
    .end local v147           #task:I
    :pswitch_22
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 559
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_22

    const/4 v5, 0x1

    move/from16 v120, v5

    .line 560
    .local v120, onlyRoot:Z
    :goto_1c
    if-eqz v46, :cond_23

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v120

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v5

    move/from16 v139, v5

    .line 562
    .local v139, res:I
    :goto_1d
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    move-object/from16 v0, p3

    move/from16 v1, v139

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 559
    .end local v120           #onlyRoot:Z
    .end local v139           #res:I
    :cond_22
    const/4 v5, 0x0

    move/from16 v120, v5

    goto :goto_1c

    .line 560
    .restart local v120       #onlyRoot:Z
    :cond_23
    const/4 v5, -0x1

    move/from16 v139, v5

    goto :goto_1d

    .line 568
    .end local v46           #token:Landroid/os/IBinder;
    .end local v120           #onlyRoot:Z
    :pswitch_23
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 570
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v45

    .line 571
    .local v45, className:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->finishOtherInstances(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 572
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 577
    .end local v45           #className:Landroid/content/ComponentName;
    .end local v46           #token:Landroid/os/IBinder;
    :pswitch_24
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 579
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_24

    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/graphics/Bitmap;

    move-object/from16 v148, p1

    .line 581
    .restart local v148       #thumbnail:Landroid/graphics/Bitmap;
    :goto_1e
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v92

    check-cast v92, Ljava/lang/CharSequence;

    .line 582
    .restart local v92       #description:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v148

    move-object/from16 v3, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->reportThumbnail(Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 583
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 579
    .end local v92           #description:Ljava/lang/CharSequence;
    .end local v148           #thumbnail:Landroid/graphics/Bitmap;
    .restart local p1
    :cond_24
    const/4 v5, 0x0

    move-object/from16 v148, v5

    goto :goto_1e

    .line 588
    .end local v46           #token:Landroid/os/IBinder;
    :pswitch_25
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 590
    .restart local v83       #b:Landroid/os/IBinder;
    invoke-static/range {v83 .. v83}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 591
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v117

    .line 592
    .local v117, name:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v117

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v91

    .line 593
    .local v91, cph:Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    if-eqz v91, :cond_25

    .line 595
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    const/4 v5, 0x0

    move-object/from16 v0, v91

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 600
    :goto_1f
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 598
    :cond_25
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1f

    .line 604
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v83           #b:Landroid/os/IBinder;
    .end local v91           #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v117           #name:Ljava/lang/String;
    :pswitch_26
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 606
    .restart local v83       #b:Landroid/os/IBinder;
    invoke-static/range {v83 .. v83}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 607
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v131

    .line 609
    .local v131, providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v131

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 610
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 615
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v83           #b:Landroid/os/IBinder;
    .end local v131           #providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    :pswitch_27
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 617
    .restart local v83       #b:Landroid/os/IBinder;
    invoke-static/range {v83 .. v83}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 618
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v117

    .line 619
    .restart local v117       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v117

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;)V

    .line 620
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 625
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v83           #b:Landroid/os/IBinder;
    .end local v117           #name:Ljava/lang/String;
    :pswitch_28
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v90

    check-cast v90, Landroid/content/ComponentName;

    .line 627
    .local v90, comp:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v124

    .line 628
    .local v124, pi:Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    move-object/from16 v0, v124

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 630
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 634
    .end local v90           #comp:Landroid/content/ComponentName;
    .end local v124           #pi:Landroid/app/PendingIntent;
    :pswitch_29
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 635
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 636
    .restart local v83       #b:Landroid/os/IBinder;
    invoke-static/range {v83 .. v83}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 637
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/content/Intent;

    .line 638
    .local v53, service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 639
    .restart local v8       #resolvedType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v53

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v89

    .line 640
    .restart local v89       #cn:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    move-object/from16 v0, v89

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 642
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 646
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v53           #service:Landroid/content/Intent;
    .end local v83           #b:Landroid/os/IBinder;
    .end local v89           #cn:Landroid/content/ComponentName;
    :pswitch_2a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 648
    .restart local v83       #b:Landroid/os/IBinder;
    invoke-static/range {v83 .. v83}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 649
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/content/Intent;

    .line 650
    .restart local v53       #service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 651
    .restart local v8       #resolvedType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v53

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)I

    move-result v139

    .line 652
    .restart local v139       #res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    move-object/from16 v0, p3

    move/from16 v1, v139

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 654
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 658
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v53           #service:Landroid/content/Intent;
    .end local v83           #b:Landroid/os/IBinder;
    .end local v139           #res:I
    :pswitch_2b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v45

    .line 660
    .restart local v45       #className:Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 661
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v144

    .line 662
    .local v144, startId:I
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    move/from16 v3, v144

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v139

    .line 663
    .local v139, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    if-eqz v139, :cond_26

    const/4 v5, 0x1

    :goto_20
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 665
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 664
    :cond_26
    const/4 v5, 0x0

    goto :goto_20

    .line 669
    .end local v45           #className:Landroid/content/ComponentName;
    .end local v46           #token:Landroid/os/IBinder;
    .end local v139           #res:Z
    .end local v144           #startId:I
    :pswitch_2c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 670
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v45

    .line 671
    .restart local v45       #className:Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 672
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v47

    .line 673
    .local v47, id:I
    const/16 v48, 0x0

    .line 674
    .local v48, notification:Landroid/app/Notification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_27

    .line 675
    sget-object v5, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v48

    .end local v48           #notification:Landroid/app/Notification;
    check-cast v48, Landroid/app/Notification;

    .line 677
    .restart local v48       #notification:Landroid/app/Notification;
    :cond_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_28

    const/4 v5, 0x1

    move/from16 v49, v5

    .local v49, removeNotification:Z
    :goto_21
    move-object/from16 v44, p0

    .line 678
    invoke-virtual/range {v44 .. v49}, Landroid/app/ActivityManagerNative;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V

    .line 679
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 677
    .end local v49           #removeNotification:Z
    :cond_28
    const/4 v5, 0x0

    move/from16 v49, v5

    goto :goto_21

    .line 684
    .end local v45           #className:Landroid/content/ComponentName;
    .end local v46           #token:Landroid/os/IBinder;
    .end local v47           #id:I
    .end local v48           #notification:Landroid/app/Notification;
    :pswitch_2d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 685
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 686
    .restart local v83       #b:Landroid/os/IBinder;
    invoke-static/range {v83 .. v83}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 687
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 688
    .restart local v46       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/content/Intent;

    .line 689
    .restart local v53       #service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 690
    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 691
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v56

    .line 692
    .restart local v56       #fl:I
    invoke-static/range {v83 .. v83}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v55

    .local v55, conn:Landroid/app/IServiceConnection;
    move-object/from16 v50, p0

    move-object/from16 v51, v6

    move-object/from16 v52, v46

    move-object/from16 v54, v8

    .line 693
    invoke-virtual/range {v50 .. v56}, Landroid/app/ActivityManagerNative;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;I)I

    move-result v139

    .line 694
    .local v139, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    move-object/from16 v0, p3

    move/from16 v1, v139

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 696
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 700
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v46           #token:Landroid/os/IBinder;
    .end local v53           #service:Landroid/content/Intent;
    .end local v55           #conn:Landroid/app/IServiceConnection;
    .end local v56           #fl:I
    .end local v83           #b:Landroid/os/IBinder;
    .end local v139           #res:I
    :pswitch_2e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 702
    .restart local v83       #b:Landroid/os/IBinder;
    invoke-static/range {v83 .. v83}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v55

    .line 703
    .restart local v55       #conn:Landroid/app/IServiceConnection;
    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v139

    .line 704
    .local v139, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    if-eqz v139, :cond_29

    const/4 v5, 0x1

    :goto_22
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 706
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 705
    :cond_29
    const/4 v5, 0x0

    goto :goto_22

    .line 710
    .end local v55           #conn:Landroid/app/IServiceConnection;
    .end local v83           #b:Landroid/os/IBinder;
    .end local v139           #res:Z
    :pswitch_2f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 711
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 712
    .restart local v46       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 713
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v53

    .line 714
    .local v53, service:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object v2, v7

    move-object/from16 v3, v53

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 715
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 720
    .end local v7           #intent:Landroid/content/Intent;
    .end local v46           #token:Landroid/os/IBinder;
    .end local v53           #service:Landroid/os/IBinder;
    :pswitch_30
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 721
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 722
    .restart local v46       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 723
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2a

    const/4 v5, 0x1

    move/from16 v93, v5

    .line 724
    .local v93, doRebind:Z
    :goto_23
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object v2, v7

    move/from16 v3, v93

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 725
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 723
    .end local v93           #doRebind:Z
    :cond_2a
    const/4 v5, 0x0

    move/from16 v93, v5

    goto :goto_23

    .line 730
    .end local v7           #intent:Landroid/content/Intent;
    .end local v46           #token:Landroid/os/IBinder;
    :pswitch_31
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 731
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 732
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v64

    .line 733
    .local v64, type:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v144

    .line 734
    .restart local v144       #startId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v139

    .line 735
    .local v139, res:I
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v64

    move/from16 v3, v144

    move/from16 v4, v139

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 736
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 741
    .end local v46           #token:Landroid/os/IBinder;
    .end local v64           #type:I
    .end local v139           #res:I
    .end local v144           #startId:I
    :pswitch_32
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 742
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v45

    .line 743
    .restart local v45       #className:Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v59

    .line 744
    .local v59, profileFile:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v56

    .line 745
    .restart local v56       #fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v61

    .line 746
    .local v61, arguments:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 747
    .restart local v83       #b:Landroid/os/IBinder;
    invoke-static/range {v83 .. v83}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v62

    .local v62, w:Landroid/app/IInstrumentationWatcher;
    move-object/from16 v57, p0

    move-object/from16 v58, v45

    move/from16 v60, v56

    .line 748
    invoke-virtual/range {v57 .. v62}, Landroid/app/ActivityManagerNative;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;)Z

    move-result v139

    .line 749
    .local v139, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    if-eqz v139, :cond_2b

    const/4 v5, 0x1

    :goto_24
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 751
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 750
    :cond_2b
    const/4 v5, 0x0

    goto :goto_24

    .line 756
    .end local v45           #className:Landroid/content/ComponentName;
    .end local v56           #fl:I
    .end local v59           #profileFile:Ljava/lang/String;
    .end local v61           #arguments:Landroid/os/Bundle;
    .end local v62           #w:Landroid/app/IInstrumentationWatcher;
    .end local v83           #b:Landroid/os/IBinder;
    .end local v139           #res:Z
    :pswitch_33
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 757
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 758
    .restart local v83       #b:Landroid/os/IBinder;
    invoke-static/range {v83 .. v83}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 759
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 760
    .restart local v32       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v141

    .line 761
    .local v141, results:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v32

    move-object/from16 v3, v141

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    .line 762
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 763
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 767
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v32           #resultCode:I
    .end local v83           #b:Landroid/os/IBinder;
    .end local v141           #results:Landroid/os/Bundle;
    :pswitch_34
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v16

    .line 769
    .restart local v16       #config:Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    const/4 v5, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 771
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 775
    .end local v16           #config:Landroid/content/res/Configuration;
    :pswitch_35
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 776
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/res/Configuration;

    .line 777
    .restart local v16       #config:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 778
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 783
    .end local v16           #config:Landroid/content/res/Configuration;
    :pswitch_36
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 785
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v138

    .line 786
    .local v138, requestedOrientation:I
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v138

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 787
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 792
    .end local v46           #token:Landroid/os/IBinder;
    .end local v138           #requestedOrientation:I
    :pswitch_37
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 793
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 794
    .restart local v46       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v137

    .line 795
    .local v137, req:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    move-object/from16 v0, p3

    move/from16 v1, v137

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 797
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 801
    .end local v46           #token:Landroid/os/IBinder;
    .end local v137           #req:I
    :pswitch_38
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 802
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 803
    .restart local v46       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v89

    .line 804
    .restart local v89       #cn:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    move-object/from16 v0, v89

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 806
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 810
    .end local v46           #token:Landroid/os/IBinder;
    .end local v89           #cn:Landroid/content/ComponentName;
    :pswitch_39
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 811
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 812
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 813
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 814
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 818
    .end local v46           #token:Landroid/os/IBinder;
    :pswitch_3a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 819
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v64

    .line 820
    .restart local v64       #type:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v65

    .line 821
    .local v65, packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 822
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 823
    .restart local v12       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 824
    .restart local v13       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2c

    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/content/Intent;

    move-object/from16 v69, p1

    .line 826
    .local v69, requestIntent:Landroid/content/Intent;
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v70

    .line 827
    .local v70, requestResolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v56

    .restart local v56       #fl:I
    move-object/from16 v63, p0

    move-object/from16 v66, v46

    move-object/from16 v67, v12

    move/from16 v68, v13

    move/from16 v71, v56

    .line 828
    invoke-virtual/range {v63 .. v71}, Landroid/app/ActivityManagerNative;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;I)Landroid/content/IIntentSender;

    move-result-object v139

    .line 831
    .local v139, res:Landroid/content/IIntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 832
    if-eqz v139, :cond_2d

    invoke-interface/range {v139 .. v139}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :goto_26
    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 833
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 824
    .end local v56           #fl:I
    .end local v69           #requestIntent:Landroid/content/Intent;
    .end local v70           #requestResolvedType:Ljava/lang/String;
    .end local v139           #res:Landroid/content/IIntentSender;
    .restart local p1
    :cond_2c
    const/4 v5, 0x0

    move-object/from16 v69, v5

    goto :goto_25

    .line 832
    .end local p1
    .restart local v56       #fl:I
    .restart local v69       #requestIntent:Landroid/content/Intent;
    .restart local v70       #requestResolvedType:Ljava/lang/String;
    .restart local v139       #res:Landroid/content/IIntentSender;
    :cond_2d
    const/4 v5, 0x0

    goto :goto_26

    .line 837
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v46           #token:Landroid/os/IBinder;
    .end local v56           #fl:I
    .end local v64           #type:I
    .end local v65           #packageName:Ljava/lang/String;
    .end local v69           #requestIntent:Landroid/content/Intent;
    .end local v70           #requestResolvedType:Ljava/lang/String;
    .end local v139           #res:Landroid/content/IIntentSender;
    .restart local p1
    :pswitch_3b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 838
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v132

    .line 840
    .local v132, r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v132

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->cancelIntentSender(Landroid/content/IIntentSender;)V

    .line 841
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 842
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 846
    .end local v132           #r:Landroid/content/IIntentSender;
    :pswitch_3c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 847
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v132

    .line 849
    .restart local v132       #r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v132

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    move-result-object v139

    .line 850
    .local v139, res:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 851
    move-object/from16 v0, p3

    move-object/from16 v1, v139

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 852
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 856
    .end local v132           #r:Landroid/content/IIntentSender;
    .end local v139           #res:Ljava/lang/String;
    :pswitch_3d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 857
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v113

    .line 858
    .local v113, max:I
    move-object/from16 v0, p0

    move/from16 v1, v113

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setProcessLimit(I)V

    .line 859
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 864
    .end local v113           #max:I
    :pswitch_3e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 865
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessLimit()I

    move-result v106

    .line 866
    .local v106, limit:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 867
    move-object/from16 v0, p3

    move/from16 v1, v106

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 868
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 872
    .end local v106           #limit:I
    :pswitch_3f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 873
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 874
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v125

    .line 875
    .local v125, pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2e

    const/4 v5, 0x1

    move/from16 v105, v5

    .line 876
    .local v105, isForeground:Z
    :goto_27
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v125

    move/from16 v3, v105

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 877
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 878
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 875
    .end local v105           #isForeground:Z
    :cond_2e
    const/4 v5, 0x0

    move/from16 v105, v5

    goto :goto_27

    .line 882
    .end local v46           #token:Landroid/os/IBinder;
    .end local v125           #pid:I
    :pswitch_40
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 883
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 884
    .restart local v35       #perm:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v125

    .line 885
    .restart local v125       #pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 886
    .local v72, uid:I
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v125

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->checkPermission(Ljava/lang/String;II)I

    move-result v139

    .line 887
    .local v139, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 888
    move-object/from16 v0, p3

    move/from16 v1, v139

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 889
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 893
    .end local v35           #perm:Ljava/lang/String;
    .end local v72           #uid:I
    .end local v125           #pid:I
    .end local v139           #res:I
    :pswitch_41
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 894
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/net/Uri;

    .line 895
    .local v77, uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v125

    .line 896
    .restart local v125       #pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 897
    .restart local v72       #uid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 898
    .local v78, mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    move/from16 v2, v125

    move/from16 v3, v72

    move/from16 v4, v78

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v139

    .line 899
    .restart local v139       #res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    move-object/from16 v0, p3

    move/from16 v1, v139

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 901
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 905
    .end local v72           #uid:I
    .end local v77           #uri:Landroid/net/Uri;
    .end local v78           #mode:I
    .end local v125           #pid:I
    .end local v139           #res:I
    :pswitch_42
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 906
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v65

    .line 907
    .restart local v65       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v119

    .line 909
    .local v119, observer:Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v65

    move-object/from16 v2, v119

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v139

    .line 910
    .local v139, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 911
    if-eqz v139, :cond_2f

    const/4 v5, 0x1

    :goto_28
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 912
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 911
    :cond_2f
    const/4 v5, 0x0

    goto :goto_28

    .line 916
    .end local v65           #packageName:Ljava/lang/String;
    .end local v119           #observer:Landroid/content/pm/IPackageDataObserver;
    .end local v139           #res:Z
    :pswitch_43
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 917
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 918
    .restart local v83       #b:Landroid/os/IBinder;
    invoke-static/range {v83 .. v83}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 919
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v76

    .line 920
    .local v76, targetPkg:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/net/Uri;

    .line 921
    .restart local v77       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 922
    .restart local v78       #mode:I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v76

    move-object/from16 v3, v77

    move/from16 v4, v78

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 923
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 928
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v76           #targetPkg:Ljava/lang/String;
    .end local v77           #uri:Landroid/net/Uri;
    .end local v78           #mode:I
    .end local v83           #b:Landroid/os/IBinder;
    :pswitch_44
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 929
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 930
    .restart local v83       #b:Landroid/os/IBinder;
    invoke-static/range {v83 .. v83}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 931
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/net/Uri;

    .line 932
    .restart local v77       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 933
    .restart local v78       #mode:I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v77

    move/from16 v3, v78

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;I)V

    .line 934
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 935
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 939
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v77           #uri:Landroid/net/Uri;
    .end local v78           #mode:I
    .end local v83           #b:Landroid/os/IBinder;
    :pswitch_45
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 940
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v83

    .line 941
    .restart local v83       #b:Landroid/os/IBinder;
    invoke-static/range {v83 .. v83}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 942
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_30

    const/4 v5, 0x1

    move/from16 v150, v5

    .line 943
    .local v150, waiting:Z
    :goto_29
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v150

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    .line 944
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 945
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 942
    .end local v150           #waiting:Z
    :cond_30
    const/4 v5, 0x0

    move/from16 v150, v5

    goto :goto_29

    .line 949
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v83           #b:Landroid/os/IBinder;
    :pswitch_46
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 950
    new-instance v116, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct/range {v116 .. v116}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 951
    .local v116, mi:Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v116

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 952
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 953
    const/4 v5, 0x0

    move-object/from16 v0, v116

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 954
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 958
    .end local v116           #mi:Landroid/app/ActivityManager$MemoryInfo;
    :pswitch_47
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 959
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->unhandledBack()V

    .line 960
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 961
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 965
    :pswitch_48
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 966
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v77

    .line 967
    .restart local v77       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v123

    .line 968
    .local v123, pfd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 969
    if-eqz v123, :cond_31

    .line 970
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 971
    const/4 v5, 0x1

    move-object/from16 v0, v123

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 975
    :goto_2a
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 973
    :cond_31
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2a

    .line 979
    .end local v77           #uri:Landroid/net/Uri;
    .end local v123           #pfd:Landroid/os/ParcelFileDescriptor;
    :pswitch_49
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 980
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->goingToSleep()V

    .line 981
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 986
    :pswitch_4a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 987
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->wakingUp()V

    .line 988
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 989
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 993
    :pswitch_4b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 994
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v128

    .line 995
    .local v128, pn:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_32

    const/4 v5, 0x1

    move/from16 v152, v5

    .line 996
    .local v152, wfd:Z
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_33

    const/4 v5, 0x1

    move/from16 v122, v5

    .line 997
    .local v122, per:Z
    :goto_2c
    move-object/from16 v0, p0

    move-object/from16 v1, v128

    move/from16 v2, v152

    move/from16 v3, v122

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 998
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 999
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 995
    .end local v122           #per:Z
    .end local v152           #wfd:Z
    :cond_32
    const/4 v5, 0x0

    move/from16 v152, v5

    goto :goto_2b

    .line 996
    .restart local v152       #wfd:Z
    :cond_33
    const/4 v5, 0x0

    move/from16 v122, v5

    goto :goto_2c

    .line 1003
    .end local v128           #pn:Ljava/lang/String;
    .end local v152           #wfd:Z
    :pswitch_4c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1004
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_34

    const/4 v5, 0x1

    move/from16 v94, v5

    .line 1005
    .local v94, enabled:Z
    :goto_2d
    move-object/from16 v0, p0

    move/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setAlwaysFinish(Z)V

    .line 1006
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1007
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1004
    .end local v94           #enabled:Z
    :cond_34
    const/4 v5, 0x0

    move/from16 v94, v5

    goto :goto_2d

    .line 1011
    :pswitch_4d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1012
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v151

    .line 1014
    .local v151, watcher:Landroid/app/IActivityController;
    move-object/from16 v0, p0

    move-object/from16 v1, v151

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setActivityController(Landroid/app/IActivityController;)V

    .line 1015
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1019
    .end local v151           #watcher:Landroid/app/IActivityController;
    :pswitch_4e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1020
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->enterSafeMode()V

    .line 1021
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1022
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1026
    :pswitch_4f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1027
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v104

    .line 1029
    .local v104, is:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/content/IIntentSender;)V

    .line 1030
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1031
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1035
    .end local v104           #is:Landroid/content/IIntentSender;
    :pswitch_50
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1036
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v126

    .line 1037
    .local v126, pids:[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v133

    .line 1038
    .local v133, reason:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v126

    move-object/from16 v2, v133

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killPids([ILjava/lang/String;)Z

    move-result v139

    .line 1039
    .restart local v139       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1040
    if-eqz v139, :cond_35

    const/4 v5, 0x1

    :goto_2e
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1041
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1040
    :cond_35
    const/4 v5, 0x0

    goto :goto_2e

    .line 1045
    .end local v126           #pids:[I
    .end local v133           #reason:Ljava/lang/String;
    .end local v139           #res:Z
    :pswitch_51
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1046
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v127

    .line 1047
    .local v127, pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v88

    .line 1048
    .local v88, cls:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v80

    .line 1049
    .local v80, action:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v100

    .line 1050
    .local v100, indata:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v127

    move-object/from16 v2, v88

    move-object/from16 v3, v80

    move-object/from16 v4, v100

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->startRunning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1052
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1056
    .end local v80           #action:Ljava/lang/String;
    .end local v88           #cls:Ljava/lang/String;
    .end local v100           #indata:Ljava/lang/String;
    .end local v127           #pkg:Ljava/lang/String;
    :pswitch_52
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1057
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1058
    .local v6, app:Landroid/os/IBinder;
    new-instance v87, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v87

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1059
    .local v87, ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v87

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1060
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1065
    .end local v6           #app:Landroid/os/IBinder;
    .end local v87           #ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    :pswitch_53
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1066
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1067
    .restart local v6       #app:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v146

    .line 1068
    .local v146, tag:Ljava/lang/String;
    new-instance v87, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v87

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1069
    .restart local v87       #ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v146

    move-object/from16 v3, v87

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)Z

    move-result v139

    .line 1070
    .restart local v139       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1071
    if-eqz v139, :cond_36

    const/4 v5, 0x1

    :goto_2f
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1072
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1071
    :cond_36
    const/4 v5, 0x0

    goto :goto_2f

    .line 1076
    .end local v6           #app:Landroid/os/IBinder;
    .end local v87           #ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v139           #res:Z
    .end local v146           #tag:Ljava/lang/String;
    :pswitch_54
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1077
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1078
    .restart local v6       #app:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v149

    .line 1079
    .local v149, violationMask:I
    new-instance v102, Landroid/os/StrictMode$ViolationInfo;

    move-object/from16 v0, v102

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;)V

    .line 1080
    .local v102, info:Landroid/os/StrictMode$ViolationInfo;
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v149

    move-object/from16 v3, v102

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1081
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1082
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1086
    .end local v6           #app:Landroid/os/IBinder;
    .end local v102           #info:Landroid/os/StrictMode$ViolationInfo;
    .end local v149           #violationMask:I
    :pswitch_55
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1087
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v142

    .line 1088
    .local v142, sig:I
    move-object/from16 v0, p0

    move/from16 v1, v142

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->signalPersistentProcesses(I)V

    .line 1089
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1090
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1094
    .end local v142           #sig:I
    :pswitch_56
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1095
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v65

    .line 1096
    .restart local v65       #packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 1097
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1098
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1102
    .end local v65           #packageName:Ljava/lang/String;
    :pswitch_57
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v65

    .line 1104
    .restart local v65       #packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->forceStopPackage(Ljava/lang/String;)V

    .line 1105
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1106
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1110
    .end local v65           #packageName:Ljava/lang/String;
    :pswitch_58
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1111
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v16

    .line 1112
    .local v16, config:Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1113
    const/4 v5, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1114
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1118
    .end local v16           #config:Landroid/content/pm/ConfigurationInfo;
    :pswitch_59
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v129

    .line 1120
    .local v129, process:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_37

    const/4 v5, 0x1

    move/from16 v143, v5

    .line 1121
    .local v143, start:Z
    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v121

    .line 1122
    .local v121, path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_38

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    move-object/from16 v97, v5

    .line 1124
    .local v97, fd:Landroid/os/ParcelFileDescriptor;
    :goto_31
    move-object/from16 v0, p0

    move-object/from16 v1, v129

    move/from16 v2, v143

    move-object/from16 v3, v121

    move-object/from16 v4, v97

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->profileControl(Ljava/lang/String;ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v139

    .line 1125
    .restart local v139       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1126
    if-eqz v139, :cond_39

    const/4 v5, 0x1

    :goto_32
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1127
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1120
    .end local v97           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v121           #path:Ljava/lang/String;
    .end local v139           #res:Z
    .end local v143           #start:Z
    :cond_37
    const/4 v5, 0x0

    move/from16 v143, v5

    goto :goto_30

    .line 1122
    .restart local v121       #path:Ljava/lang/String;
    .restart local v143       #start:Z
    :cond_38
    const/4 v5, 0x0

    move-object/from16 v97, v5

    goto :goto_31

    .line 1126
    .restart local v97       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v139       #res:Z
    :cond_39
    const/4 v5, 0x0

    goto :goto_32

    .line 1131
    .end local v97           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v121           #path:Ljava/lang/String;
    .end local v129           #process:Ljava/lang/String;
    .end local v139           #res:Z
    .end local v143           #start:Z
    :pswitch_5a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->shutdown(I)Z

    move-result v139

    .line 1133
    .restart local v139       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1134
    if-eqz v139, :cond_3a

    const/4 v5, 0x1

    :goto_33
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1135
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1134
    :cond_3a
    const/4 v5, 0x0

    goto :goto_33

    .line 1139
    .end local v139           #res:Z
    :pswitch_5b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1140
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopAppSwitches()V

    .line 1141
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1142
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1146
    :pswitch_5c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1147
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->resumeAppSwitches()V

    .line 1148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1149
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1153
    :pswitch_5d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1154
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/content/Intent;

    .line 1155
    .local v53, service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1156
    .restart local v8       #resolvedType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->peekService(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v85

    .line 1157
    .local v85, binder:Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1158
    move-object/from16 v0, p3

    move-object/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1159
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1163
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v53           #service:Landroid/content/Intent;
    .end local v85           #binder:Landroid/os/IBinder;
    :pswitch_5e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1164
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v102

    check-cast v102, Landroid/content/pm/ApplicationInfo;

    .line 1165
    .local v102, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v84

    .line 1166
    .local v84, backupRestoreMode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v102

    move/from16 v2, v84

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v145

    .line 1167
    .local v145, success:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1168
    if-eqz v145, :cond_3b

    const/4 v5, 0x1

    :goto_34
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1169
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1168
    :cond_3b
    const/4 v5, 0x0

    goto :goto_34

    .line 1173
    .end local v84           #backupRestoreMode:I
    .end local v102           #info:Landroid/content/pm/ApplicationInfo;
    .end local v145           #success:Z
    :pswitch_5f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v65

    .line 1175
    .restart local v65       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v81

    .line 1176
    .local v81, agent:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v65

    move-object/from16 v2, v81

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1178
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1182
    .end local v65           #packageName:Ljava/lang/String;
    .end local v81           #agent:Landroid/os/IBinder;
    :pswitch_60
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1183
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v102

    check-cast v102, Landroid/content/pm/ApplicationInfo;

    .line 1184
    .restart local v102       #info:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1185
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1186
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1190
    .end local v102           #info:Landroid/content/pm/ApplicationInfo;
    :pswitch_61
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IActivityWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityWatcher;

    move-result-object v151

    .line 1193
    .local v151, watcher:Landroid/app/IActivityWatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v151

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerActivityWatcher(Landroid/app/IActivityWatcher;)V

    .line 1194
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1198
    .end local v151           #watcher:Landroid/app/IActivityWatcher;
    :pswitch_62
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IActivityWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityWatcher;

    move-result-object v151

    .line 1201
    .restart local v151       #watcher:Landroid/app/IActivityWatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v151

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterActivityWatcher(Landroid/app/IActivityWatcher;)V

    .line 1202
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1207
    .end local v151           #watcher:Landroid/app/IActivityWatcher;
    :pswitch_63
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 1209
    .restart local v72       #uid:I
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 1210
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1211
    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 1212
    .local v11, resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1213
    .restart local v12       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1214
    .restart local v13       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3c

    const/4 v5, 0x1

    move v14, v5

    .restart local v14       #onlyIfNeeded:Z
    :goto_35
    move-object/from16 v71, p0

    move-object/from16 v73, v7

    move-object/from16 v74, v8

    move-object/from16 v75, v11

    move-object/from16 v76, v12

    move/from16 v77, v13

    move/from16 v78, v14

    .line 1215
    invoke-virtual/range {v71 .. v78}, Landroid/app/ActivityManagerNative;->startActivityInPackage(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IZ)I

    move-result v140

    .line 1217
    .local v140, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1218
    move-object/from16 v0, p3

    move/from16 v1, v140

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1219
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1214
    .end local v14           #onlyIfNeeded:Z
    .end local v140           #result:I
    :cond_3c
    const/4 v5, 0x0

    move v14, v5

    goto :goto_35

    .line 1223
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v11           #resultTo:Landroid/os/IBinder;
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v72           #uid:I
    :pswitch_64
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v127

    .line 1225
    .restart local v127       #pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 1226
    .restart local v72       #uid:I
    move-object/from16 v0, p0

    move-object/from16 v1, v127

    move/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationWithUid(Ljava/lang/String;I)V

    .line 1227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1228
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1232
    .end local v72           #uid:I
    .end local v127           #pkg:Ljava/lang/String;
    :pswitch_65
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v133

    .line 1234
    .restart local v133       #reason:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->closeSystemDialogs(Ljava/lang/String;)V

    .line 1235
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1236
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1240
    .end local v133           #reason:Ljava/lang/String;
    :pswitch_66
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v126

    .line 1242
    .restart local v126       #pids:[I
    move-object/from16 v0, p0

    move-object/from16 v1, v126

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v139

    .line 1243
    .local v139, res:[Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1244
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v139

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1245
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1249
    .end local v126           #pids:[I
    .end local v139           #res:[Landroid/os/Debug$MemoryInfo;
    :pswitch_67
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v130

    .line 1251
    .local v130, processName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 1252
    .restart local v72       #uid:I
    move-object/from16 v0, p0

    move-object/from16 v1, v130

    move/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationProcess(Ljava/lang/String;I)V

    .line 1253
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1254
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1258
    .end local v72           #uid:I
    .end local v130           #processName:Ljava/lang/String;
    :pswitch_68
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v46

    .line 1260
    .restart local v46       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v65

    .line 1261
    .restart local v65       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v95

    .line 1262
    .local v95, enterAnim:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v96

    .line 1263
    .local v96, exitAnim:I
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v65

    move/from16 v3, v95

    move/from16 v4, v96

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 1264
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1265
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1269
    .end local v46           #token:Landroid/os/IBinder;
    .end local v65           #packageName:Ljava/lang/String;
    .end local v95           #enterAnim:I
    .end local v96           #exitAnim:I
    :pswitch_69
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1270
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isUserAMonkey()Z

    move-result v82

    .line 1271
    .local v82, areThey:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1272
    if-eqz v82, :cond_3d

    const/4 v5, 0x1

    :goto_36
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1273
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1272
    :cond_3d
    const/4 v5, 0x0

    goto :goto_36

    .line 1277
    .end local v82           #areThey:Z
    :pswitch_6a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1278
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->finishHeavyWeightApp()V

    .line 1279
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1280
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1284
    :pswitch_6b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 1286
    .restart local v72       #uid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v103

    .line 1287
    .local v103, initialPid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v65

    .line 1288
    .restart local v65       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v115

    .line 1289
    .local v115, message:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v72

    move/from16 v2, v103

    move-object/from16 v3, v65

    move-object/from16 v4, v115

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    .line 1290
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1291
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1295
    .end local v65           #packageName:Ljava/lang/String;
    .end local v72           #uid:I
    .end local v103           #initialPid:I
    .end local v115           #message:Ljava/lang/String;
    :pswitch_6c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1296
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/net/Uri;

    .line 1297
    .restart local v77       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProviderMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v64

    .line 1298
    .local v64, type:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1299
    move-object/from16 v0, p3

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1300
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1304
    .end local v64           #type:Ljava/lang/String;
    .end local v77           #uri:Landroid/net/Uri;
    :pswitch_6d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v117

    .line 1306
    .restart local v117       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v35

    .line 1307
    .local v35, perm:Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1308
    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1309
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1313
    .end local v35           #perm:Landroid/os/IBinder;
    .end local v117           #name:Ljava/lang/String;
    :pswitch_6e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1314
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v74

    .line 1315
    .local v74, owner:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v75

    .line 1316
    .local v75, fromUid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v76

    .line 1317
    .restart local v76       #targetPkg:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/net/Uri;

    .line 1318
    .restart local v77       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .restart local v78       #mode:I
    move-object/from16 v73, p0

    .line 1319
    invoke-virtual/range {v73 .. v78}, Landroid/app/ActivityManagerNative;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;I)V

    .line 1320
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1321
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1325
    .end local v74           #owner:Landroid/os/IBinder;
    .end local v75           #fromUid:I
    .end local v76           #targetPkg:Ljava/lang/String;
    .end local v77           #uri:Landroid/net/Uri;
    .end local v78           #mode:I
    :pswitch_6f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v74

    .line 1327
    .restart local v74       #owner:Landroid/os/IBinder;
    const/16 v77, 0x0

    .line 1328
    .restart local v77       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3e

    .line 1329
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1331
    :cond_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v78

    .line 1332
    .restart local v78       #mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v74

    move-object/from16 v2, v77

    move/from16 v3, v78

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;I)V

    .line 1333
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1334
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_51
        :pswitch_52
        :pswitch_1
        :pswitch_47
        :pswitch_48
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_1e
        :pswitch_1f
        :pswitch_21
        :pswitch_22
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_0
        :pswitch_7
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_23
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_2b
        :pswitch_38
        :pswitch_39
        :pswitch_3d
        :pswitch_3e
        :pswitch_40
        :pswitch_41
        :pswitch_43
        :pswitch_44
        :pswitch_4d
        :pswitch_45
        :pswitch_55
        :pswitch_18
        :pswitch_31
        :pswitch_12
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_4e
        :pswitch_5
        :pswitch_4f
        :pswitch_27
        :pswitch_36
        :pswitch_37
        :pswitch_30
        :pswitch_3f
        :pswitch_2c
        :pswitch_20
        :pswitch_46
        :pswitch_1b
        :pswitch_42
        :pswitch_57
        :pswitch_50
        :pswitch_1a
        :pswitch_0
        :pswitch_1c
        :pswitch_58
        :pswitch_5d
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_4
        :pswitch_68
        :pswitch_53
        :pswitch_56
        :pswitch_69
        :pswitch_2
        :pswitch_8
        :pswitch_3
        :pswitch_1d
        :pswitch_6a
        :pswitch_54
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6b
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_19
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method
