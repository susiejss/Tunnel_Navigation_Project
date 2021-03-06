classdef BrakeCmd < robotics.ros.Message
    %BrakeCmd MATLAB implementation of dbw_mkz_msgs/BrakeCmd
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2017 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'dbw_mkz_msgs/BrakeCmd' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = '4b6c57c74f8e12f7f2af7f00a7897290' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Constant)
        CMDNONE = uint8(0)
        CMDPEDAL = uint8(1)
        CMDPERCENT = uint8(2)
        CMDTORQUE = uint8(3)
        TORQUEBOO = single(520)
        TORQUEMAX = single(3412)
    end
    
    properties (Dependent)
        PedalCmd
        PedalCmdType
        BooCmd
        Enable
        Ignore
        Count
    end
    
    properties (Constant, Hidden)
        PropertyList = {'BooCmd', 'Count', 'Enable', 'Ignore', 'PedalCmd', 'PedalCmdType'} % List of non-constant message properties
        ROSPropertyList = {'boo_cmd', 'count', 'enable', 'ignore', 'pedal_cmd', 'pedal_cmd_type'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = BrakeCmd(msg)
            %BrakeCmd Construct the message object BrakeCmd
            import com.mathworks.toolbox.robotics.ros.message.MessageInfo;
            
            % Support default constructor
            if nargin == 0
                obj.JavaMessage = obj.createNewJavaMessage;
                return;
            end
            
            % Construct appropriate empty array
            if isempty(msg)
                obj = obj.empty(0,1);
                return;
            end
            
            % Make scalar construction fast
            if isscalar(msg)
                % Check for correct input class
                if ~MessageInfo.compareTypes(msg(1), obj.MessageType)
                    error(message('robotics:ros:message:NoTypeMatch', obj.MessageType, ...
                        char(MessageInfo.getType(msg(1))) ));
                end
                obj.JavaMessage = msg(1);
                return;
            end
            
            % Check that this is a vector of scalar messages. Since this
            % is an object array, use arrayfun to verify.
            if ~all(arrayfun(@isscalar, msg))
                error(message('robotics:ros:message:MessageArraySizeError'));
            end
            
            % Check that all messages in the array have the correct type
            if ~all(arrayfun(@(x) MessageInfo.compareTypes(x, obj.MessageType), msg))
                error(message('robotics:ros:message:NoTypeMatchArray', obj.MessageType));
            end
            
            % Construct array of objects if necessary
            objType = class(obj);
            for i = 1:length(msg)
                obj(i,1) = feval(objType, msg(i)); %#ok<AGROW>
            end
        end
        
        function pedalcmd = get.PedalCmd(obj)
            %get.PedalCmd Get the value for property PedalCmd
            pedalcmd = single(obj.JavaMessage.getPedalCmd);
        end
        
        function set.PedalCmd(obj, pedalcmd)
            %set.PedalCmd Set the value for property PedalCmd
            validateattributes(pedalcmd, {'numeric'}, {'nonempty', 'scalar'}, 'BrakeCmd', 'PedalCmd');
            
            obj.JavaMessage.setPedalCmd(pedalcmd);
        end
        
        function pedalcmdtype = get.PedalCmdType(obj)
            %get.PedalCmdType Get the value for property PedalCmdType
            pedalcmdtype = typecast(int8(obj.JavaMessage.getPedalCmdType), 'uint8');
        end
        
        function set.PedalCmdType(obj, pedalcmdtype)
            %set.PedalCmdType Set the value for property PedalCmdType
            validateattributes(pedalcmdtype, {'numeric'}, {'nonempty', 'scalar'}, 'BrakeCmd', 'PedalCmdType');
            
            obj.JavaMessage.setPedalCmdType(pedalcmdtype);
        end
        
        function boocmd = get.BooCmd(obj)
            %get.BooCmd Get the value for property BooCmd
            boocmd = logical(obj.JavaMessage.getBooCmd);
        end
        
        function set.BooCmd(obj, boocmd)
            %set.BooCmd Set the value for property BooCmd
            validateattributes(boocmd, {'logical', 'numeric'}, {'nonempty', 'scalar'}, 'BrakeCmd', 'BooCmd');
            
            obj.JavaMessage.setBooCmd(boocmd);
        end
        
        function enable = get.Enable(obj)
            %get.Enable Get the value for property Enable
            enable = logical(obj.JavaMessage.getEnable);
        end
        
        function set.Enable(obj, enable)
            %set.Enable Set the value for property Enable
            validateattributes(enable, {'logical', 'numeric'}, {'nonempty', 'scalar'}, 'BrakeCmd', 'Enable');
            
            obj.JavaMessage.setEnable(enable);
        end
        
        function ignore = get.Ignore(obj)
            %get.Ignore Get the value for property Ignore
            ignore = logical(obj.JavaMessage.getIgnore);
        end
        
        function set.Ignore(obj, ignore)
            %set.Ignore Set the value for property Ignore
            validateattributes(ignore, {'logical', 'numeric'}, {'nonempty', 'scalar'}, 'BrakeCmd', 'Ignore');
            
            obj.JavaMessage.setIgnore(ignore);
        end
        
        function count = get.Count(obj)
            %get.Count Get the value for property Count
            count = typecast(int8(obj.JavaMessage.getCount), 'uint8');
        end
        
        function set.Count(obj, count)
            %set.Count Set the value for property Count
            validateattributes(count, {'numeric'}, {'nonempty', 'scalar'}, 'BrakeCmd', 'Count');
            
            obj.JavaMessage.setCount(count);
        end
    end
    
    methods (Access = protected)
        function cpObj = copyElement(obj)
            %copyElement Implements deep copy behavior for message
            
            % Call default copy method for shallow copy
            cpObj = copyElement@robotics.ros.Message(obj);
            
            % Create a new Java message object
            cpObj.JavaMessage = obj.createNewJavaMessage;
            
            % Iterate over all primitive properties
            cpObj.PedalCmd = obj.PedalCmd;
            cpObj.PedalCmdType = obj.PedalCmdType;
            cpObj.BooCmd = obj.BooCmd;
            cpObj.Enable = obj.Enable;
            cpObj.Ignore = obj.Ignore;
            cpObj.Count = obj.Count;
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.PedalCmd = strObj.PedalCmd;
            obj.PedalCmdType = strObj.PedalCmdType;
            obj.BooCmd = strObj.BooCmd;
            obj.Enable = strObj.Enable;
            obj.Ignore = strObj.Ignore;
            obj.Count = strObj.Count;
        end
    end
    
    methods (Access = ?robotics.ros.Message)
        function strObj = saveobj(obj)
            %saveobj Implements saving of message to MAT file
            
            % Return an empty element if object array is empty
            if isempty(obj)
                strObj = struct.empty;
                return
            end
            
            strObj.PedalCmd = obj.PedalCmd;
            strObj.PedalCmdType = obj.PedalCmdType;
            strObj.BooCmd = obj.BooCmd;
            strObj.Enable = obj.Enable;
            strObj.Ignore = obj.Ignore;
            strObj.Count = obj.Count;
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.dbw_mkz_msgs.BrakeCmd.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.dbw_mkz_msgs.BrakeCmd;
            obj.reload(strObj);
        end
    end
end
