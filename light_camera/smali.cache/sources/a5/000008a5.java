package co.openlight.lightprocessingservice;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import co.openlight.lightprocessingservice.IProcessListener;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public interface IProcessor extends IInterface {
    String createProcessedImage(ProcessRequest processRequest) throws RemoteException;

    boolean postProcessingComplete(ProcessRequest processRequest) throws RemoteException;

    void registerProcessListener(IProcessListener iProcessListener) throws RemoteException;

    void unregisterProcessListener(IProcessListener iProcessListener) throws RemoteException;

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public static abstract class Stub extends Binder implements IProcessor {
        private static final String DESCRIPTOR = "co.openlight.lightprocessingservice.IProcessor";
        static final int TRANSACTION_createProcessedImage = 1;
        static final int TRANSACTION_postProcessingComplete = 4;
        static final int TRANSACTION_registerProcessListener = 2;
        static final int TRANSACTION_unregisterProcessListener = 3;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IProcessor asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IProcessor)) {
                return (IProcessor) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    String createProcessedImage = createProcessedImage(parcel.readInt() != 0 ? ProcessRequest.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeString(createProcessedImage);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerProcessListener(IProcessListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterProcessListener(IProcessListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean postProcessingComplete = postProcessingComplete(parcel.readInt() != 0 ? ProcessRequest.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(postProcessingComplete ? 1 : 0);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: /tmp/jadx-11175800792829446388.dex */
        private static class Proxy implements IProcessor {
            private IBinder mRemote;

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // co.openlight.lightprocessingservice.IProcessor
            public String createProcessedImage(ProcessRequest processRequest) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (processRequest != null) {
                        obtain.writeInt(1);
                        processRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // co.openlight.lightprocessingservice.IProcessor
            public void registerProcessListener(IProcessListener iProcessListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iProcessListener != null ? iProcessListener.asBinder() : null);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // co.openlight.lightprocessingservice.IProcessor
            public void unregisterProcessListener(IProcessListener iProcessListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iProcessListener != null ? iProcessListener.asBinder() : null);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // co.openlight.lightprocessingservice.IProcessor
            public boolean postProcessingComplete(ProcessRequest processRequest) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (processRequest != null) {
                        obtain.writeInt(1);
                        processRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}